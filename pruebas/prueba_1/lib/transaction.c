#include "transaction.h" 

//RIC para contar las barreras de los benchmarks
unsigned long barrierCounter = 0;

volatile int sense = 0;
volatile int count = 0;

pthread_mutex_t bar_lock;
pthread_mutex_t global_lock;

//RIC Para implementar el spinlock del fallback de Haswell
volatile unsigned int g_ticketlock_ticket = 0;
volatile unsigned int g_ticketlock_turn = 1;

volatile uint32_t g_lock_var = 0;
fback_lock_t g_fallback_lock = {.ticket = 0, .turn = 1};