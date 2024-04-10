#ifndef TRANSACTION_H_
#define TRANSACTION_H_

#include <pthread.h>
#include <assert.h>
#include <sys/syscall.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>
#include <immintrin.h>

//RIC Meto pausa recomendada por Intel para mejorar la eficiencia en spinlocks
#define CPU_RELAX() _mm_pause()

#define LOCK_TAKEN 0xFF

#define CACHE_BLOCK_SIZE 64

#define GLOBAL_RETRIES 5

#define BEGIN_ESCAPE _xsusldtrk()
#define END_ESCAPE _xresldtrk()



#define BEGIN_TRANSACTION( xId)                                           \
  unsigned long __p_status, __p_retries;                                       \
  __p_retries = 0;                                                             \
  do                                                                           \
  {                                                                            \
    if (__p_retries){                                                          \
      profileAbortStatus(__p_status, xId);                               \
    }                                                                          \
    __p_retries++;                                                             \
    if (__p_retries > GLOBAL_RETRIES)                                          \
    {                                                                          \
      unsigned int myticket = __sync_add_and_fetch(&(g_ticketlock.ticket), 1); \
      while (myticket != g_ticketlock.turn)                                    \
        CPU_RELAX();                                                           \
      break;                                                                   \
    }                                                                          \
    while (g_ticketlock.ticket >= g_ticketlock.turn)                           \
      CPU_RELAX(); /* Avoid Lemming effect */                                  \
  } while ((__p_status = _xbegin()) != _XBEGIN_STARTED)

#define COMMIT_TRANSACTION(xId)              \
  if (__p_retries <= GLOBAL_RETRIES)               \
  {                                                \
    if (g_ticketlock.ticket >= g_ticketlock.turn)  \
      _xabort(LOCK_TAKEN); /*Lazy subscription*/   \
    _xend();                                       \
    profileCommit( xId, __p_retries - 1);     \
  }                                                \
  else                                             \
  {                                                \
    __sync_add_and_fetch(&(g_ticketlock.turn), 1); \
    profileFallback( xId, __p_retries - 1);   \
  }


struct Stats
{
  //Las estadísticas se actualizan fuera de transacción, pero se reservan con malloc (¿podrían caer cerca de datos compartidos accedidos dentro de transacción y compartir línea de caché?)
  volatile char pad1[CACHE_BLOCK_SIZE];  //Pads para que no haya false sharing (que no coincidan xabortCount de un thread con retryFCount de otro en un bloque cache)
  unsigned long int xabortCount;         //Número total de abortos
  unsigned long int explicitAborts;      //Número de llamadas a XABORT en el código
  unsigned long int explicitAbortsSubs;  //Número de abortos explícitos por subscripción de lock
  unsigned long int retryAborts;         //Abortos para los que el hardware piensa que debemos reintentar
  unsigned long int retryConflictAborts; //Abortos para los que el hardware piensa que debemos reintentar
  unsigned long int retryCapacityAborts; //Abortos para los que el hardware piensa que debemos reintentar
  unsigned long int conflictAborts;      //Abortos por conflicto
  unsigned long int capacityAborts;      //Abortos por capacidad
  unsigned long int debugAborts;         //Abortos por breakpoint de debugger
  unsigned long int nestedAborts;        //Abortos dentro de una transacción anidada
  unsigned long int eaxzeroAborts;       //Abortos con eax = 0
  unsigned long int xcommitCount;        //Número de commits
  unsigned long int fallbackCount;       //Número de fallbacks
  unsigned long int retryCCount;         //Número de retries de las que commitan
  unsigned long int retryFCount;         //Número de retries de las que entran en fallback
  volatile char pad2[CACHE_BLOCK_SIZE];
};

struct TicketLock
{
  volatile char pad1[CACHE_BLOCK_SIZE];
  //RIC Para implementar el spinlock del fallback de Haswell
  volatile unsigned int ticket; // = 0;
  volatile unsigned int turn;   // = 1;
  volatile char pad2[CACHE_BLOCK_SIZE];
};

extern struct TicketLock g_ticketlock;
extern struct Stats *stats;
//extern long GLOBAL_RETRIES;
//extern volatile unsigned int g_ticketlock_ticket;
//extern volatile unsigned int g_ticketlock_turn;

//Funciones para el fichero de estadísticas
int statsFileInit(long xCount);
int dumpStats();
unsigned long profileAbortStatus(unsigned long eax, long xid);
void profileCommit(long xid, long retries);
void profileFallback(long xid, long retries);

/* Transaction descriptor. It is aligned (including stats) to CACHELINE_SIZE
 * to avoid aliases with other threads metadata */
typedef struct tm_tx {
  uint32_t order; /* Order of the transaction relative to gClock. This is
                             * updated only in non-xact mode (in tm_barrier) and is
                             * read in non-xact mode (abort) or xact. suspended mode. */
  uint8_t pad1[CACHE_BLOCK_SIZE-sizeof(uint32_t)];
  uint32_t retries; /* Number of retries remaining until switch to fallback.
                             * This is read & updated only in non-xact mode (abort
                             * and after a successful commit) */
  uint8_t speculative; /* True if transaction is in speculative mode. This is
                        * read in xact. mode (tm_commit) and non-xact mode
                        * (tm_start, abort) and it is updated in non-xact.
                        * mode (outside the xact.) in aborts and tm_commit 
                        * and upon reach a tm_barrier to switch to speculative */
  uint32_t specMax; /* Max level of speculation before wait for commit. This
                    * is updated only in non-xact mode (after a series of
                    * aborts in speculative mode). */
  uint32_t specLevel; /* Number of transactions remaining until wait for commit.
                             * This is decremented in xact. mode when a nested xact.
                             * reaches commit but have to remain in speculative mode.
                             * It is also reset after a successful commit. */
  uint32_t status;  /* Transaction status.*/
  uint8_t pad2[CACHE_BLOCK_SIZE-sizeof(uint32_t)*3-sizeof(uint8_t)];
} __attribute__ ((aligned (CACHE_BLOCK_SIZE))) tm_tx_t;


typedef struct fback_lock {
  //RIC Para implementar el spinlock del fallback de Haswell
  volatile uint32_t ticket;
  volatile uint32_t turn;
  uint8_t pad[CACHE_BLOCK_SIZE-sizeof(uint32_t)*2];
} __attribute__ ((aligned (CACHE_BLOCK_SIZE))) fback_lock_t;

extern fback_lock_t g_fallback_lock;
extern pthread_mutex_t global_lock;
extern volatile uint32_t g_lock_var;


#endif
