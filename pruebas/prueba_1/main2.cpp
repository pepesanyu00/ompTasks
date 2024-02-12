#include <omp.h>
#include <iostream>
#include "lib/transaction.h"

int main() {
    int counter = 0;
    //omp_lock_t lock;

    //omp_init_lock(&lock);

    #pragma omp parallel num_threads(4)
    {
        cout << "hola" << endl;
        for (int i = 0; i < 10000; ++i) {
            int tid = omp_get_thread_num();
            BEGIN_TRANSACTION(tid,0);
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