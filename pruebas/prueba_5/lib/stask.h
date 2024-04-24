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
#include <variant>
#include <unordered_map>
#include "rtmIntel.h"



/*
Mapa que guarda las variables de dependencia junto con su estado,
que puede ser true o false según se haya rellenado o no la variable en cuestión por
la tarea que genera la dependencia.
*/
extern std::unordered_map<void*, bool> map;

//Variable que almacena el id de transaccion automáticamente desde el código
extern std::atomic<long> xIdCounter;


#define PRINT_MAP(map) \
    for(const auto& pair : map) { \
        BEGIN_ESCAPE; \
        cout << pair.first << ": " << (pair.second ? "true" : "false") << std::endl; \
        END_ESCAPE; \
    }


// MACROS PARA STASK SIN DEPENDENCIAS

#define BEGIN_STASK()                                        \

#define COMMIT_STASK()                                        \


// MACROS PARA OPCION DE IN

#define BEGIN_STASK_IN(in)                                        \
    long xId = xIdCounter.fetch_add(1);                           \
    BEGIN_TRANSACTION(xId);    


#define COMMIT_STASK_IN(in)                                        \
    /*PRINT_MAP(map);*/                                                    \
    while(map[&in] == false && g_ticketlock.ticket < 1){                                                    \
        BEGIN_ESCAPE;                                                      \
        CPU_RELAX();                                    \
        END_ESCAPE;                                                        \
    }                                                                            \
    COMMIT_TRANSACTION(xId);        

// MACROS PARA OPCION DE OUT

#define BEGIN_STASK_OUT(out)                                        \
    long xId = xIdCounter.fetch_add(1);                           \
    map[&out] = false;                                    \
    BEGIN_TRANSACTION(xId);                                 

#define COMMIT_STASK_OUT(out)                                        \
    map[&out] = true;                                                      \
    COMMIT_TRANSACTION(xId); 


// MACROS PARA OPCION DE INOUT


#define BEGIN_STASK_INOUT(in, out)                                        \
    long xId = xIdCounter.fetch_add(1);                           \
    map[&out] = false;                                    \
    BEGIN_TRANSACTION(xId);                                               


#define COMMIT_STASK_INOUT(in, out)                                           \
    map[&out] = true;                                                      \
    while(map[&in] == false && g_ticketlock.ticket < 1){                                                    \
        BEGIN_ESCAPE;                                                      \
        CPU_RELAX();                                    \
        END_ESCAPE;                                                        \
    }                                                                            \
    COMMIT_TRANSACTION(xId);                                              

#endif