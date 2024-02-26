#include <iostream>
#include <omp.h>
#include <list>
#include <algorithm>
#include <mutex>
#include "lib/transaction.h"


using namespace std;

list<int> priorityList;
mutex listMutex;

#define BEGIN_STASK(thId, xId, priority)                                    \
        INIT_TRANSACTION();                                                   \
        if (priority > 0)                                                     \
        {                                                                     \
            printf(" he entrado en el if\n");                                 \
            while (!priorityFound(priority))                                  \
            {                                                                 \
            }                                                                 \
            printf(" he pasado el bucle\n");                                  \
            BEGIN_TRANSACTION(thId, xId);                                     \
        }                                                                     \
        else if (priority == 0)                                               \
        {                                                                     \
            printf(" he iniciado la transaccion\n");                          \
            BEGIN_TRANSACTION(thId, xId);                                     \
            printf(" he pasado el inicio de la transaccion\n");               \
        }                                                                     \
        else                                                                  \
        {                                                                     \
            printf("Error: Prioridad no válida\n");                           \
        }                                                                     

#define COMMIT_STASK(thId, xId, priority)                                    \
        printf("He entrado en el commit, id%i\n", thId);                      \
        COMMIT_TRANSACTION(thId, xId);                                        \
        lock_guard<mutex> guard(listMutex);                                   \
        priorityList.push_back(priority);                                     \
        printf("He pasado el commit, id%i, lista: %i\n", thId, priorityList.size()); 


bool priorityFound(int priority)
{
    lock_guard<mutex> guard(listMutex);
    return count(priorityList.begin(), priorityList.end(), priority - 1) > 0;
}

int main()
{
    int variable = 0;
#pragma omp parallel
    {
    #pragma omp single
    {
        #pragma omp task shared(variable)
        {
            int tid = omp_get_thread_num();
            cout << "tid1:" << tid << endl;
            int local_variable = 0; // Copia local de la variable
            BEGIN_STASK(tid, 0, 0);
            local_variable = 17; // Actualizar la copia local
            variable = local_variable; // Actualizar la variable compartida
            COMMIT_STASK(tid, 0, 0);
        }

        #pragma omp task shared(variable)
        {
            int tid = omp_get_thread_num();
            cout << "tid2:" << tid << endl;
            int local_variable = 0; // Copia local de la variable
            BEGIN_STASK(tid, 0, 1);
            local_variable = variable; // Leer la variable compartida
            cout << "variable en segunda tarea: " << local_variable << endl;
            COMMIT_STASK(tid, 0, 1);
        }
    }
    }
    cout << "variable fuera: " << variable << endl;

    return 0;
}