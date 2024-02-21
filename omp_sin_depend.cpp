#include <iostream>
#include <omp.h>
#include <ctime>

int main() {
    int variable = 0;
    #pragma omp parallel 
    {
        #pragma omp single
        {

            #pragma omp task shared(variable)
            {
                std::cout << "hola" << std::endl;
                variable = 17;
                std::cout << "ya está" << std::endl;
            }
        }
        #pragma omp single
        {
            std::cout << "he llegado" << std::endl;
            #pragma omp task shared(variable)
            {
                // Esta tarea no se ejecutará hasta que la variable esté rellena
                std::cout << variable << std::endl;
            }
        }
    }

    return 0;
}