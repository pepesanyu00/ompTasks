#!/bin/bash

# Contador
contador=1

# Ejecutar el ejecutable "tasks" 1000 veces
while [ $contador -le 1000 ]; do
    #echo "Ejecutando tasks por $contador vez"
    ./tasks  # Reemplaza "./tasks" con la ruta real si no está en el mismo directorio
    contador=$((contador + 1))
done

