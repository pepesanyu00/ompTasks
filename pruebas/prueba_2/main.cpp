/* Esta prueba es el mismo concepto que la primera, hay una variable que comienza con valor 0, se modifica en una tarea,
y otra la imprime, esta vez se va a establecer un sistema de prioridades para comprobar si puede funcionar. A la hora de crear
la transacción se le asigna una prioridad (indicada por el programador), de tal forma que la tarea con menos prioridad debe
esperar a que la primera haga commit para ejecutarse.
*/


#include <iostream>
#include <omp.h>
#include <ctime>

#include "lib/stask.h"

using namespace std;

int variable = 0;
int main() {
    #pragma omp parallel 
    {
        #pragma omp single
        {
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                std::cout << "tid1:" << tid << endl;
                BEGIN_STASK(tid,0,0);
                variable = 17;
                COMMIT_STASK(tid,0,0);
            }
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                std::cout << "tid2:" << tid << endl;
                sleep(1);
                BEGIN_STASK(tid,0,1);
                std::cout << "variable en segunda tarea: " << variable << endl;
                COMMIT_STASK(tid,0,1);
            }
        }
    }

    std::cout << "variable fuera: " << variable << endl;

    return 0;
}