/* Vamos a modificar un poco la prueba 5 para que las tareas se creen dentro del bucle anidado, estableciendo dependencias entre las variables
que había anteriormente
*/


#include <iostream>
#include <omp.h>
#include <ctime>

#include "lib/stask.h"

using namespace std;

void gauss_seidel(int tsteps, int size, int TS, int (*p)[size]) {
    int NB = size / TS;
    #pragma omp parallel
    #pragma omp single
        for (int t = 0; t < tsteps; ++t)
            for (int ii=1; ii < size-1; ii+=TS)
                for (int jj=1; jj < size-1; jj+=TS) {
                    #pragma omp task depend(inout: p[ii:TS][jj:TS])
                                    depend(in: p[ii-TS:TS][jj:TS], p[ii+TS:TS][jj:TS],
                                    p[ii:TS][jj-TS:TS], p[ii:TS][jj:TS])
                    {
                    BEGIN_STASK(1, 0);
                    for (int i=ii; i<(1+ii)*TS; ++i)
                        for (int j=jj; j<(1+jj)*TS; ++j)
                            p[i][j] = 0.25 * (p[i][j-1] * p[i][j+1] *
                            p[i-1][j] * p[i+1][j]);
                    }
                    COMMIT_STASK(1, 0);
                }
}

int main() {
    const int tsteps = 10;
    const int size = 100;
    const int TS = 10;
    int p[size][size];

    // Inicializar la matriz p
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            p[i][j] = i * j;
        }
    }

    gauss_seidel(tsteps, size, TS, p);

    // Imprimir la matriz p después de gauss_seidel
    for (int i = 0; i < size; ++i) {
        for (int j = 0; j < size; ++j) {
            cout << p[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}