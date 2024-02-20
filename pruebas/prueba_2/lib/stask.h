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
#include "transaction.h"
using namespace std;


#define BEGIN_ESCAPE __builtin_tsuspend()
#define END_ESCAPE __builtin_tresume()

//Lista en la que se almacena la prioridad de las transacciones que han hecho commit
extern list<int> priorityList;

#define BEGIN_STASK(thId, xId, priority)                                    \
    INIT_TRANSACTION();                                                     \
    if(priority > 0){                                                       \
        printf(" he entrado en el if");                                     \
        while(!(count(priorityList.begin(),priorityList.end(),priority-1) == 0 or priorityList.empty())){   \
            printf("he entrado en el while");                                \
        }                                                                   \
        printf(" he pasado el bucle");                                      \
        BEGIN_TRANSACTION(thId, xId);                                       \
    }else if(priority == 0){                                                \
        BEGIN_TRANSACTION(thId, xId);                                       \
    }else{                                                                  \
        printf("Error: Prioridad no válida\n");                             \
    }

#define COMMIT_STASK(thId, xId, priority)                                   \
    COMMIT_TRANSACTION(thId,xId);                                           \
    priorityList.push_back(priority);                                       



#endif