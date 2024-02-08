#include <iostream>
#include <omp.h>
#include <ctime>

int main() {
    int variable = 0;
    #pragma omp parallel 
    {
        #pragma omp single
        {

            #pragma omp task
            {
                std::cout << "hola" << std::endl;
                variable = 17;
                std::cout << "ya está" << std::endl;
            }

            std::cout << "he llegado" << std::endl;
            #pragma omp task
            {
                // Esta tarea no se ejecutará hasta que la variable esté rellena
                std::cout << variable << std::endl;
                std::cout << "La variable ha sido rellenada, la segunda tarea puede ejecutarse." << std::endl;
            }
        }
    }

    return 0;
}