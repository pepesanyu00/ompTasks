/* El objetivo de esta prueba es probar otro caso de uso, en este caso van a ser dos tareas que acceden a la misma variable, incrementandola,
sin dependencia puede darse el caso de que las dos interfieran entre sí, dando lugar a un único incremento, por lo que se meten 
transacciones para que esto no sea posible.*/


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

int main() {
    int variable = 0;
    #pragma omp parallel 
    {
        #pragma omp single
        {
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                cout << "tid1:" << tid << endl;
                BEGIN_STASK(tid,0,0);
                variable = 17;
                COMMIT_STASK(tid,0,0);
            }
        }
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                cout << "tid2:" << tid << endl;
                BEGIN_STASK(tid,0,1);
                cout << "variable en segunda tarea: " << variable << endl;
                COMMIT_STASK(tid,0,1);
            }
    }

    cout << "variable fuera: " << variable << endl;

    return 0;
}