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
    }


    void worker_thread() {
        while (true) {
            Task task;
            if (taskQueue.try_pop(task)) {
                task.function(task.arg);
                break;
            } else {
                std::this_thread::yield();
            }
        }
    }
};