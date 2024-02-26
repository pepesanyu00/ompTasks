/* El objetivo de esta prueba es probar otro caso de uso, en este caso van a ser dos tareas que acceden a la misma variable, incrementandola,
sin dependencia puede darse el caso de que las dos interfieran entre sí, dando lugar a un único incremento, por lo que se meten 
transacciones para que esto no sea posible.*/


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
                //BEGIN_STASK(tid,0,0);
                variable++;
                //COMMIT_STASK(tid,0,0);
            }
        }
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                cout << "tid2:" << tid << endl;
                //BEGIN_STASK(tid,0,1);
                variable++;
                //COMMIT_STASK(tid,0,1);
            }
    }

    cout << "variable fuera: " << variable << endl;

    return 0;
}