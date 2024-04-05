/* Esta prueba es una extensión de la prueba 4, 
*/


#include <iostream>
#include <omp.h>
#include <ctime>

#include "lib/stask.h"

using namespace std;

#define SIZE 10

void fill_matrix(int matrix[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j < SIZE; ++j) {
            matrix[i][j] = rand() % 100;  // Genera un número aleatorio entre 0 y 99
        }
    }
}

void print_matrix(int matrix[SIZE][SIZE]) {
    for (int i = 0; i < SIZE; ++i) {
        for (int j = 0; j < SIZE; ++j) {
            std::cout << matrix[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

    int a[SIZE][SIZE];
    int b[SIZE][SIZE];
    int c[SIZE][SIZE] = {};
    int d[SIZE][SIZE] = {};

int main(int argc, char *argv[]) {

    fill_matrix(a);
    fill_matrix(b);

    //print_matrix(a);
    //print_matrix(b);
    //print_matrix(c);

    chrono::steady_clock::time_point tstart, tend;
    chrono::duration<double> telapsed;
    if(!statsFileInit(2)){
      cout << "Error abriendo o inicializando el archivo de estadísticas." << endl;
      return 0;
    }
    tstart = chrono::steady_clock::now();
    #pragma omp parallel 
    {
        #pragma omp single
        {
            #pragma omp task shared(a, b, c)
            {
                BEGIN_STASK(c,0,0);
                for (int i = 0; i < SIZE; ++i) {
                    for (int j = 0; j < SIZE; ++j) {
                        for (int k = 0; k < SIZE; ++k) {
                            
                            c[i][j] += a[i][k] * b[k][j];
                        }
                    }
                }
                COMMIT_STASK(c,0,0);
            }
            #pragma omp task shared(c)
            {
                BEGIN_STASK(0,c,1);
                for (int i = 0; i < SIZE; ++i) {
                    for (int j = 0; j < SIZE; ++j) {
                        d[i][j] = c[i][j]+1;
                    }
                }
                COMMIT_STASK(0,c,1);
            }
        }
    }
    tend = chrono::steady_clock::now();    
    telapsed = tend - tstart;
    if(!dumpStats(telapsed.count(),1)){
      cout << "Error volcando las estadísticas." << endl;
    }
    cout << d[10][10] << endl;
    cout << telapsed.count() << endl;
    
    return 0;
}