#include <iostream>
#include <omp.h>
#include <mutex>
#include <condition_variable>
#include "lib/transaction.h"

using namespace std;

mutex mtx;
condition_variable cv;
bool ready = false;

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
                {
                    lock_guard<mutex> lock(mtx);
                    // Simulando una transacción
                    variable = 17;
                    // Notificar que la transacción ha terminado
                    ready = true;
                    cv.notify_one();
                }
            }

#pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                cout << "tid2:" << tid << endl;
                {
                    unique_lock<mutex> lock(mtx);
                    // Esperar a que la primera tarea haya completado su transacción
                    cv.wait(lock, [] { return ready; });
                    // La variable se ha actualizado, ahora podemos continuar
                    cout << "variable en segunda tarea: " << variable << endl;
                }
            }
        }
    }

    cout << "variable fuera: " << variable << endl;

    return 0;
}