/* Archivo para definir las tareas transaccionales. Esencialmente son transacciones con prioridades establecidas,
siendo 0 la transacción con mayor prioridad y n-1 la de menor prioridad. Por ejemplo, si tenemos transacciones con
prioridades 0 y 1, la transacción con prioridad 0 se ejecutará antes que la de prioridad 1, pero si la 1 entra en 
begin antes que la 0, deberá esperar a que la 0 haga commit para poder ejecutarse.
*/

#ifndef STASK_H_
#define STASK_H_

#include <pthread.h>
#include <assert.h>
#include <sys/syscall.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <list>
#include <algorithm>
#include <thread>
#include <atomic>
#include "transaction.h"
using namespace std;



//Flag que indica a una transacción que contiene algún out si puede terminar o no
extern bool doneFlag;

//Variable que almacena el id de transaccion automáticamente desde el código
extern std::atomic<long> xIdCounter;

#define BEGIN_STASK(in, out, thId)                                        \
    long xId = xIdCounter.fetch_add(1);                         \
    INIT_TRANSACTION();                                                     \
    BEGIN_TRANSACTION(thId,xId);                                               


#define COMMIT_STASK(in, out, thId)                                           \
    if(in){                                                                      \
        doneFlag = true;                                                      \
    }                                                                            \
    if(out){                                                                   \
        while(!doneFlag){                                                    \
            std::this_thread::yield();                                    \
        }                                                                       \
    }                                                                            \
    COMMIT_TRANSACTION(thId, xId);                                              

#endif