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
#include <mutex>
#include "transaction.h"
using namespace std;


#define BEGIN_ESCAPE __builtin_tsuspend()
#define END_ESCAPE __builtin_tresume()

//Lista en la que se almacena el id de las transacciones que han hecho commit
extern list<int> terminatedList;
extern mutex listMutex;

#define BEGIN_STASK(thId, xId, id, first)                                            \
    INIT_TRANSACTION();                                                             \
    if( !first ){                                                                    \
        int ix = 0;                                                                 \
        while((count(terminatedList.begin(),terminatedList.end(),id) == 0))     \
        {                                                                           \
            ix++;                                                                   \
        }                                                                           \
    }                                                                               \
    BEGIN_TRANSACTION(thId,xId);

#define COMMIT_STASK(thId, xId, id, first)                                           \
    if( first ){                                                                     \
        terminatedList.push_back(id);                                               \
    }                                                                               \
    COMMIT_TRANSACTION(thId,xId);                                                                         



#endif