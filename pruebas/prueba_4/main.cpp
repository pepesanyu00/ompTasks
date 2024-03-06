/* Esta es una prueba que extiende a la prueba 2, seguimos con la transacciones con prioridad y variables globales,
esta vez se va a probar en un programa que utilice bucles dentro de una tarea, rellenando una matriz. Así podremos medir
los tiempos de la implementación que utiliza depend y los de la que utiliza stask.

La idea de la prueba es hacer multiplicación de matrices de tal forma que en una tarea se rellena la matriz y en otra se
imprime el resultado. Se va a cambiar la librería de stasks de tal forma que cada transacción tiene un id que será el mismo
que tenga cada transacción análoga en la otra tarea, de tal forma que se resuelvan las dependencias por pares de transacciones.*/


#include <iostream>
#include <omp.h>
#include <ctime>
#include <vector>
#include "lib/stask.h"

#define SIZE 3


void fill_matrix(std::vector<std::vector<int>>& matrix) {
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j < SIZE; ++j) {
            matrix[i][j] = rand() % 100;  // Genera un número aleatorio entre 0 y 99
        }
    }
}

void print_matrix(std::vector<std::vector<int>>& matrix) {
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j < SIZE; ++j) {
            std::cout << matrix[i][j] << " ";
        }
        std::cout << std::endl;
    }
}



int main() {

    std::vector<std::vector<int>> a(SIZE, std::vector<int>(SIZE));
    std::vector<std::vector<int>> b(SIZE, std::vector<int>(SIZE));
    std::vector<std::vector<int>> c(SIZE, std::vector<int>(SIZE));
    std::vector<std::vector<int>> d(SIZE, std::vector<int>(SIZE));


    fill_matrix(a);
    fill_matrix(b);

    print_matrix(a);
    print_matrix(b);
    print_matrix(c);
    std::clock_t start = std::clock();
    #pragma omp parallel
    {
        #pragma omp single
        {
            #pragma omp task shared(a, b, c)
            {
                int id = 0;
                int tid = omp_get_thread_num();
                std::cout << "tid1:" << tid << std::endl;
                for (int i = 0; i < SIZE; ++i) {
                    for (int j = 0; j < SIZE; ++j) {
                        BEGIN_STASK(tid,0,id,1);
                        for (int k = 0; k < SIZE; ++k) {
                            c[i][j] += a[i][k] * b[k][j];
                            //cout << "c[" << i << "][" << j << "] = " << c[i][j] << endl;
                        }
                        COMMIT_STASK(tid,0,id,1);
                        id++;
                    }
                }
            }

            #pragma omp task shared(c)
            {
                int tid = omp_get_thread_num();
                int id = 0;
                std::cout << "tid2:" << tid << std::endl;
                for (int i = 0; i < SIZE; ++i) {
                    for (int j = 0; j < SIZE; ++j) {
                        BEGIN_STASK(tid,0,id,0);
                            d[i][j] = c[i][j]+1;
                        COMMIT_STASK(tid,0,id,0);
                        id++;
                    }
                    //std::cout << std::endl;
                }
            }
        }
    }
    double duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    std::cout << "La función tardó: " << duration << " segundos.\n";

    return 0;
}