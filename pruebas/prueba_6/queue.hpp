#include <queue>
#include <mutex>
#include "task.hpp"

class TaskQueue {
    std::queue<Task> tasks;
    std::mutex mutex;
public:
    void push(const Task& task) {
        std::lock_guard<std::mutex> lock(mutex);
        tasks.push(task);
    }

    bool try_pop(Task& task) {
        std::lock_guard<std::mutex> lock(mutex);
        if (tasks.empty()) {
            return false;
        }
        task = tasks.front();
        tasks.pop();
        return true;
    }
};