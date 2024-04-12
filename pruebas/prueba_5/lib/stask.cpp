#include "stask.h"


std::unordered_map<std::variant<int, float, std::string>, bool> map;
std::atomic<long> xIdCounter(0);