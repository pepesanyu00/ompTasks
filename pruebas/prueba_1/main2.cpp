#include <omp.h>
#include <iostream>
#include "lib/tmPower.h"
using namespace std;

int main() {
    int counter = 0;
    //omp_lock_t lock;

    //omp_init_lock(&lock);

    #pragma omp parallel num_threads(4)
    {
        int tid = omp_get_thread_num();
        INIT_TRANSACTION();
        #pragma omp for nowait
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