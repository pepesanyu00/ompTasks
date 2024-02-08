#include <iostream>
#include <omp.h>
#include <ctime>

int main() {
    int variable = 0;
    #pragma omp parallel 
    {
        #pragma omp single
        {
            #pragma omp task depend(out: variable)
            {
                variable = 17;

                // Añadir este bloque para un retraso de 1 segundo
                double start_time = omp_get_wtime();
                while (omp_get_wtime() - start_time < 3) {
                    // No hacer nada, solo esperar.
                }

                std::cout << "ya está" << std::endl;
            }

            std::cout << "he llegado" << std::endl;
            #pragma omp task depend(in: variable)
            {
                // Esta tarea no se ejecutará hasta que la variable esté rellena
                std::cout << variable << std::endl;
                std::cout << "La variable ha sido rellenada, la segunda tarea puede ejecutarse." << std::endl;
            }

            std::cout << "he llegado 2" << std::endl;
            #pragma omp task 
            {
                std::cout << "soy la tarea 3" << std::endl;
                
            }
        }
    }

    return 0;
}