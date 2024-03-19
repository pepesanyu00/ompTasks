#include "queue.hpp"

TaskQueue taskQueue;


struct Task {
    void (*function)(void*);
    void* arg;

public:
    void create_task(void (*function)(void*), void* arg) {
        Task task;
        task.function = function;
        task.arg = arg;
        taskQueue.push(task);
        // Señalar a los demás hilos que hay una nueva tarea disponible
        
    }


    void worker_thread() {
        while (true) {
            Task task;
            if (taskQueue.try_pop(task)) {
                task.function(task.arg);
            } else {
                // Bloquear hasta que haya una tarea disponible
            }
        }
    }
};