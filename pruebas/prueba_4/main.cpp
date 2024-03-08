/* Esta prueba cambia un poco el rumbo de lo que se estaba haciendo. En las anteriores implementaciones, cuando una transacción hacía commit era cuando podía
comenzar a ejecutarse otra transacción. En esta prueba, se van a ejecutar dos transacciones en paralelo, con prioridades, de tal forma que si la segunda transacción
termina antes que la primera, va a esperar a que la primera termine, cuando la primera termine va a hacer que la primera aborte (requester wins), haciendo que se ejecute
de nuevo y se pueda ver el valor de la variable compartida.
*/


#include <iostream>
#include <omp.h>
#include <ctime>

#include "lib/stask.h"

using namespace std;

int variable = 1;
int variable2 = 0;
int main(int argc, char *argv[]) {
    chrono::steady_clock::time_point tstart, tend;
    chrono::duration<double> telapsed;
    /*if(!statsFileInit(2)){
      cout << "Error abriendo o inicializando el archivo de estadísticas." << endl;
      return 0;
    }*/
    tstart = chrono::steady_clock::now();
    #pragma omp parallel 
    {
        #pragma omp single
        {
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                //std::cout << "tid1:" << tid << endl;
                BEGIN_STASK(tid,0,variable,0);
                variable = 17;
                COMMIT_STASK(tid,0,variable,0);
            }
            #pragma omp task shared(variable)
            {
                int tid = omp_get_thread_num();
                //std::cout << "tid2:" << tid << endl;
                BEGIN_STASK(tid,0,0,variable);
                variable2 = variable+1;
                COMMIT_STASK(tid,0,0,variable);
            }
        }
    }
    tend = chrono::steady_clock::now();    
    cout << "buenas" << endl;
    telapsed = tend - tstart;
    cout << "buenas tardes" << endl;
    /*if(!dumpStats(telapsed.count(),1)){
      cout << "Error volcando las estadísticas." << endl;
    }*/
    cout << "buenas tardes noches" << endl;

    std::cout << "variable: " << variable << endl;
    std::cout << "variable2: " << variable2 << endl;
    return 0;
}