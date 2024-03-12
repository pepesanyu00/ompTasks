/* Esta prueba es una extensión de la prueba 4, 
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
    if(!statsFileInit(2)){
      cout << "Error abriendo o inicializando el archivo de estadísticas." << endl;
      return 0;
    }
    tstart = chrono::steady_clock::now();
    #pragma omp parallel 
    {
        #pragma omp single
        {
            #pragma omp task shared(variable)
            {
                BEGIN_STASK(0,0,variable,0);
                variable = 17;
                COMMIT_STASK(0,0,variable,0);
            }
            #pragma omp task shared(variable)
            {
                //int tid = omp_get_thread_num();
                //std::cout << "tid2:" << tid << endl;
                BEGIN_STASK(1,1,0,variable);
                variable2 = variable+1;
                COMMIT_STASK(1,1,0,variable);
            }
        }
    }
    tend = chrono::steady_clock::now();    
    telapsed = tend - tstart;
    if(!dumpStats(telapsed.count(),1)){
      cout << "Error volcando las estadísticas." << endl;
    }
    cout << variable << "," << variable2 << endl;
    cout << telapsed.count() << endl;
    
    return 0;
}