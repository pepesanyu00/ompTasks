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


int main(int argc, char *argv[]) {

    int a[SIZE][SIZE];
    int b[SIZE][SIZE];
    int c[SIZE][SIZE] = {};
    int d[SIZE][SIZE] = {};

    fill_matrix(a);
    fill_matrix(b);

    //omp_set_num_threads(3);
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
            #pragma omp task
            {
                long xId = xIdCounter.fetch_add(1);                           
                map[&c] = false;                                    
                unsigned long __p_status, __p_retries;                                       
                __p_retries = 0;                                                             
                do                                                                           
                {                                                                            
                    if (__p_retries){                                                          
                    profileAbortStatus(__p_status, xId);                               
                    }                                                                          
                    __p_retries++;                                                             
                    if (__p_retries > GLOBAL_RETRIES)                                          
                    {                                                                          
                    unsigned int myticket = __sync_add_and_fetch(&(g_ticketlock.ticket), 1); 
                    while (myticket != g_ticketlock.turn)                                    
                        CPU_RELAX();                                                           
                    break;                                                                   
                    }                                                                          
                    while (g_ticketlock.ticket >= g_ticketlock.turn)                           
                    CPU_RELAX(); /* Avoid Lemming effect */                                  
                } while ((__p_status = _xbegin()) != _XBEGIN_STARTED)  ;

                //-------------------------------------------------------------------------------------------------
                for (int i = 0; i < SIZE; ++i) {
                    for (int j = 0; j < SIZE; ++j) {
                        for (int k = 0; k < SIZE; ++k) {
                            c[i][j] += a[i][k] * b[k][j];
                        }
                    }
                }
                //-------------------------------------------------------------------------------------------------
                map[&c] = true;                                                      
                if (__p_retries <= GLOBAL_RETRIES)               
                {                                                
                    if (g_ticketlock.ticket >= g_ticketlock.turn)  
                    _xabort(LOCK_TAKEN); /*Lazy subscription*/   
                    _xend();                                       
                    profileCommit( xId, __p_retries - 1);     
                }                                                
                else                                             
                {                                                
                    __sync_add_and_fetch(&(g_ticketlock.turn), 1); 
                    profileFallback( xId, __p_retries - 1);   
                }
            }
            #pragma omp task
            {
                long xId = xIdCounter.fetch_add(1);                           
                unsigned long __p_status, __p_retries;                                       
                __p_retries = 0;                                                             
                do                                                                           
                {                                                                            
                    if (__p_retries){                                                          
                    profileAbortStatus(__p_status, xId);                               
                    }                                                                          
                    __p_retries++;                                                             
                    if (__p_retries > GLOBAL_RETRIES)                                          
                    {                                                                          
                    unsigned int myticket = __sync_add_and_fetch(&(g_ticketlock.ticket), 1); 
                    while (myticket != g_ticketlock.turn)                                    
                        CPU_RELAX();                                                           
                    break;                                                                   
                    }                                                                          
                    while (g_ticketlock.ticket >= g_ticketlock.turn)                           
                    CPU_RELAX(); /* Avoid Lemming effect */                                  
                } while ((__p_status = _xbegin()) != _XBEGIN_STARTED)  ;
                //-------------------------------------------------------------------------------------------------
                for (int i = 0; i < SIZE; ++i) {
                    //cout << "2" << endl;
                    for (int j = 0; j < SIZE; ++j) {
                        d[i][j] = c[i][j]+1;
                    }
                }
                //-------------------------------------------------------------------------------------------------
                while(map[&c] == false){                                                    
                    BEGIN_ESCAPE;                                                      
                    CPU_RELAX();                                    
                    END_ESCAPE;                                                        
                }                                                                                                                            
                if (__p_retries <= GLOBAL_RETRIES)               
                {                                                
                    if (g_ticketlock.ticket >= g_ticketlock.turn)  
                    _xabort(LOCK_TAKEN); /*Lazy subscription*/   
                    _xend();                                       
                    profileCommit( xId, __p_retries - 1);     
                }                                                
                else                                             
                {                                                
                    __sync_add_and_fetch(&(g_ticketlock.turn), 1); 
                    profileFallback( xId, __p_retries - 1);   
                }      
            }
        }
    }
    tend = chrono::steady_clock::now();    
    telapsed = tend - tstart;
    if(!dumpStats()){
      cout << "Error volcando las estadísticas." << endl;
    }
    cout << d[9][9] << endl;
    cout << telapsed.count() << endl;
    
    return 0;
}