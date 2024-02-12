/* Esta es una prueba inicial del programa, la intención es hacer una prueba sencilla con dos tareas, para comprobar
si la memoria transaccional funciona para solucionar las dependencias entre tareas. Se implementarán dos tareas que trabajan
con la misma variable, una la modifica, y la otra la lee y la imprime. Se implementará una transacción en cada tarea con el 
objetivo de proteger los accesos a memoria cuando las dos tareas se estén ejecutando en paralelo.

El objetivo principal de la prueba es comprobar si se mantiene la integridad de los datos al aplicar una transacción en cada 
tarea, cumpliendo con la dependencia.
*/


#include <iostream>
#include <omp.h>
#include <ctime>

#include "lib/tmPower.h"

int main() {
    int variable = 0;
    #pragma omp parallel 
    {
        #pragma omp single
        {
            INIT_TRANSACTION();
            #pragma omp task
            {
                std::cout << "hola" << std::endl;
                int tid = omp_get_thread_num();
                BEGIN_TRANSACTION(tid,0);
                variable = 17;
                COMMIT_TRANSACTION(tid,0);
                std::cout << "ya está" << std::endl;
            }

            std::cout << "he llegado" << std::endl;
            #pragma omp task
            {
                int tid = omp_get_thread_num();
                BEGIN_TRANSACTION(tid,0);
                std::cout << variable << std::endl;
                COMMIT_TRANSACTION(tid,0);
                std::cout << "La variable ha sido rellenada, la segunda tarea puede ejecutarse." << std::endl;
            }
        }
    }

    return 0;
}