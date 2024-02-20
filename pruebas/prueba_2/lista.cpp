#include <iostream>
#include <list>
#include <algorithm>

int main() {
    std::list<int> lista; // Crear una lista con algunos elementos
    int X = 5; // El valor que queremos contar

    int contador = std::count(lista.begin(), lista.end(), X); // Contar cuántas veces aparece X en la lista
    std::cout << contador << lista.front() << std::endl;
    lista.push_back(5);

    contador = std::count(lista.begin(), lista.end(), X);
    if (contador > 0) {
        std::cout << "El valor " << X << " aparece " << contador << " veces en la lista." << std::endl;
    } else {
        std::cout << "Error: El valor " << X << " no aparece en la lista." << std::endl;
    }

    return 0;
}
