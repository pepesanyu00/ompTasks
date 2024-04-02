#include "rtmIntel.h"

//RIC Defino los global retries en rtmIntel.h como define para que no se introduzca en el Read Set de la transacción
//volatile char _gpad0[CACHE_BLOCK_SIZE];
//long global_retries = 3;

//RIC No podemos presumir que el compilador deje las variables locales tal y como se definen aquí
//    De hecho, he estado disassembling el código y gpad1, ticket y gpad2 estaban una detrás de otra,
//    sin embargo turn estaba en un sitio completamente diferente.
//    Esto puede hacer que haya falsos conflictos por false sharing si turn cae en una línea de caché con
//    otra variable que se escriba fuera de transacción.
//    Solución: meterlo en un struct. Lo meto en rtmIntel.h

/*volatile char _gpad1[CACHE_BLOCK_SIZE];
//RIC Para implementar el spinlock del fallback de Haswell
volatile unsigned int g_ticketlock_ticket = 0;
volatile unsigned int g_ticketlock_turn = 1;
volatile char _gpad2[CACHE_BLOCK_SIZE];*/




char fname[256];
long xactCount;
struct Stats *stats;
struct TicketLock g_ticketlock; //Inicializo en statsFileInit el ticketlock

volatile int sense = 0;
volatile int count = 0;

pthread_mutex_t bar_lock;
pthread_mutex_t global_lock;

fback_lock_t g_fallback_lock = {.ticket = 0, .turn = 1};

int statsFileInit(long xCount)
{
  int i;
  char ext[25];
  //Inicializo el ticket lock
  g_ticketlock.ticket = 0;
  g_ticketlock.turn = 1;

  //Saco la extensión con identificador de proceso para tener un archivo único
  sprintf(ext,"stats/%d.stats", getpid());
  strncpy(fname, ext, sizeof(fname) - 1);
  printf("Nombre del fichero: %s\n",fname);
  //Inicio los arrays de estadísticas
  xactCount = xCount;
  //printf("thCount = %d, xCount = %d\n", threadCount, xactCount);

  stats = (struct Stats *)malloc(sizeof(struct Stats ) * xactCount);
  if (!stats)
    return 0;

  for (i = 0; i < xactCount; i++)
  {
    stats[i].xabortCount = 0;
    stats[i].explicitAborts = 0;
    stats[i].explicitAbortsSubs = 0;
    stats[i].retryAborts = 0;
    stats[i].retryCapacityAborts = 0;
    stats[i].retryConflictAborts = 0;
    stats[i].conflictAborts = 0;
    stats[i].capacityAborts = 0;
    stats[i].debugAborts = 0;
    stats[i].nestedAborts = 0;
    stats[i].eaxzeroAborts = 0;
    stats[i].xcommitCount = 0;
    stats[i].fallbackCount = 0;
    stats[i].retryCCount = 0;
    stats[i].retryFCount = 0;
  }
  

  return 1;
}
unsigned long profileAbortStatus(unsigned long eax, long xid)
{
  stats[xid].xabortCount++;
  if (eax & _XABORT_EXPLICIT)
  {
    stats[xid].explicitAborts++;
    if (_XABORT_CODE(eax) == LOCK_TAKEN)
      stats[xid].explicitAbortsSubs++;
  }
  if (eax & _XABORT_RETRY)
  {
    stats[xid].retryAborts++;
    if (eax & _XABORT_CONFLICT)
      stats[xid].retryConflictAborts++;
    if (eax & _XABORT_CAPACITY)
      stats[xid].retryCapacityAborts++;
    if (eax & _XABORT_DEBUG)
      assert(0);
    if (eax & _XABORT_NESTED)
      assert(0);
  }
  if (eax & _XABORT_CONFLICT)
  {
    stats[xid].conflictAborts++;
  }
  if (eax & _XABORT_CAPACITY)
  {
    stats[xid].capacityAborts++;
  }
  if (eax & _XABORT_DEBUG)
  {
    stats[xid].debugAborts++;
  }
  if (eax & _XABORT_NESTED)
  {
    stats[xid].nestedAborts++;
  }
  if (eax == 0)
  {
    //Todos los bits a cero (puede ocurrir por una llamada a CPUID u otro cosa)
    //Véase Section 8.3.5 RTM Abort Status Definition del Intel Architecture
    //Instruction Set Extensions Programming Reference (2012))
    stats[xid].eaxzeroAborts++;
  }
  return 0;
}
void profileCommit(long xid, long retries)
{
  stats[xid].xcommitCount++;
  stats[xid].retryCCount += retries;
}
void profileFallback(long xid, long retries)
{
  stats[xid].fallbackCount++;
  stats[xid].retryFCount += retries;
}

int dumpStats()
{
  FILE *f;
  int j;
  unsigned long int tmp, comm, fall, retComm;

  //Creo el fichero
  f = fopen(fname, "w");
  if (!f)
    return 0;
  printf("Writing TM stats to: %s\n", fname);
  fprintf(f, "-----------------------------------------\nOutput file: %s\n----------------- Stats -----------------\n", fname);
  fprintf(f, "#Threads: %li\n", xactCount);

  fprintf(f, "Abort Count:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].xabortCount);
    tmp+= stats[j].xabortCount;
  }
  fprintf(f, "Total: %lu\n", tmp);

  fprintf(f, "Explicit aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].explicitAborts);
    tmp+= stats[j].explicitAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "  »     Subs:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].explicitAbortsSubs);
    tmp+= stats[j].explicitAbortsSubs;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "Retry aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].retryAborts);
    tmp+= stats[j].retryAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "  »     Con:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].retryConflictAborts);
    tmp+= stats[j].retryConflictAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "  »     Cap:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].retryCapacityAborts);
    tmp+= stats[j].retryCapacityAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "Conflict aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].conflictAborts);
    tmp+= stats[j].conflictAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "Capacity aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].capacityAborts);
    tmp+= stats[j].capacityAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "Debug aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].debugAborts);
    tmp+= stats[j].debugAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "Nested aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].nestedAborts);
    tmp+= stats[j].nestedAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "eax=0 aborts:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].eaxzeroAborts);
    tmp+= stats[j].eaxzeroAborts;
  }
  fprintf(f, " Total: %lu\n", tmp);

  fprintf(f, "Commits:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].xcommitCount);
    tmp+= stats[j].xcommitCount;
  }
  fprintf(f, " Total: %lu\n", tmp);
  comm = tmp;

  fprintf(f, "Fallbacks:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].fallbackCount);
    tmp+= stats[j].fallbackCount;
  }
  fprintf(f, " Total: %lu\n", tmp);
  fall = tmp;

  fprintf(f, "RetriesCommited:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].retryCCount);
    tmp+= stats[j].retryCCount;
  }
  fprintf(f, "Total: %lu ", tmp);
  retComm = tmp;
  fprintf(f, "PerXact: %f\n", (float)tmp / (float)xactCount);

  fprintf(f, "RetriesFallbacked:");
  for (j = 0, tmp = 0; j < xactCount; j++)
  {
    fprintf(f, " XID%d: ", j);
    fprintf(f, "%lu ", stats[j].retryFCount);
    tmp+= stats[j].retryFCount;
  }
  fprintf(f, "Total: %lu ", tmp);
  fprintf(f, "PerXact: %f\nRetriesAvg: %f\n", (float)tmp / (float)fall,
          (float)(retComm + tmp) / (float)(comm + fall));

  fclose(f);
  free(stats);
  return 1;
}