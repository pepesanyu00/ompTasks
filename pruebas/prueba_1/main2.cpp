#include <omp.h>
#include <iostream>
#include "lib/transaction.h"
#include <iostream>
using namespace std;

int main() {
    int counter = 0;
    //omp_lock_t lock;

    //omp_init_lock(&lock);

    #pragma omp parallel num_threads(4)
    {
        cout << "hola" << endl;
        int tid = omp_get_thread_num();
        for (int i = 0; i < 5; ++i) {
            cout << "he entrado" << tid << endl;
            BEGIN_TRANSACTION(tid,0);
            cout << "he creado la transaccion" << endl;
            //omp_set_lock(&lock);
            ++counter;
            //omp_unset_lock(&lock);
            COMMIT_TRANSACTION(tid,0);
        }
    }

    //omp_destroy_lock(&lock);

    std::cout << "Counter: " << counter << std::endl;

    return 0;
}