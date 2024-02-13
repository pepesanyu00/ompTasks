#ifndef TRANSACTION_H_
#define TRANSACTION_H_

#include <pthread.h>
#include <assert.h>
#include <sys/syscall.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
//RIC mete definiciones de tipos y códigos de error de HTM de power8
#include "htmintrin.h"


//RIC
#define LOCK_TAKEN 0xFF
#define VALIDATION_ERROR 0xFE

#define MAX_THREADS 128
#define MAX_SPEC    4
#define MAX_RETRIES 5

//RIC defino el número máximo de identificadores de transacciones que tendremos
//en los benchmarcs y el identificador de la transacción abierta por la barrera
//especulativa. Se utiliza en las estadísticas
#define MAX_XACT_IDS 4
#define SPEC_XACT_ID MAX_XACT_IDS-1

#define CACHE_BLOCK_SIZE 128

#define BEGIN_ESCAPE __builtin_tsuspend()
#define END_ESCAPE __builtin_tresume()

//Con ticket lock
#define BEGIN_TRANSACTION(thId, xId)                      \
{                                                         \
  __label__ __p_failure##xId;                                  \
  volatile long __p_retries = 0;                          \
  long __p_thId = thId, __p_xId = xId;                    \
  texasru_t __p_abortCause;                               \
__p_failure##xId:                                              \
  __p_abortCause = __builtin_get_texasru ();              \
  if(__p_retries) profileAbortStatus(__p_abortCause, __p_thId, __p_xId);     \
  __p_retries++;                                          \
  if (__p_retries > MAX_RETRIES) {                        \
    uint32_t myticket = __sync_add_and_fetch(&(g_fallback_lock.ticket), 1);   \
    while(myticket != g_fallback_lock.turn) ;             \
  } else {                                                \
    while (g_fallback_lock.ticket >= g_fallback_lock.turn) ; \
    if(!__builtin_tbegin(0)) goto __p_failure##xId;         \
    if (g_fallback_lock.ticket >= g_fallback_lock.turn)   \
      __builtin_tabort(LOCK_TAKEN); /*Early subscription*/ \
  }

#define COMMIT_TRANSACTION()                           \
  if (__p_retries <= MAX_RETRIES) {                    \
    __builtin_tend(0);                                 \
    profileCommit(__p_thId, __p_xId, __p_retries-1);   \
  } else {                                             \
    __sync_add_and_fetch(&(g_fallback_lock.turn),1);  \
    profileFallback(__p_thId, __p_xId, __p_retries-1); \
  }                                                    \
}


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
  uint8_t pad2[CACHE_BLOCK_SIZE-sizeof(uint32_t)*3-sizeof(uint8_t)];
} __attribute__ ((aligned (CACHE_BLOCK_SIZE))) tm_tx_t;



#endif

