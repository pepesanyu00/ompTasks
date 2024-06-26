// Esta es una prueba simple para comprobar que funcionan las transacciones y como lo hacen.


#include <omp.h>
#include <iostream>
#include "lib/transaction.h"
using namespace std;

int main() {
    double counter = 0;
    //omp_lock_t lock;

    //omp_init_lock(&lock);

    #pragma omp parallel num_threads(4)
    {
        long long int tid = omp_get_thread_num();
        for (long long int i = 0; i < 5; ++i) {
            BEGIN_TRANSACTION(tid,0);
            //cout << "he creado la transaccion" << endl;
            //omp_set_lock(&lock);
            ++counter;
            std::cout << "Counter: " << counter <<"," << tid << std::endl;
            //omp_unset_lock(&lock);
            COMMIT_TRANSACTION();
        }
    }

    //omp_destroy_lock(&lock);

    std::cout << "Counter: " << counter << std::endl;

    return 0;
}