#!/bin/bash

# Directorio que contiene los archivos .stats
directorio="stats"

# Iterar sobre cada archivo .stats en el directorio
for archivo in "$directorio"/*.stats; do
    if [ -f "$archivo" ]; then
        # Extraer la línea 9 del archivo actual y verificar si contiene un número mayor o igual que 1 más de 3 veces
        contenido_linea_9=$(sed -n '9p' "$archivo")
        num_ocurrencias=$(echo "$contenido_linea_9" | grep -o '[1-9]' | grep -c '[1-9]')
        if [ "$num_ocurrencias" -ge 2 ]; then
            echo "Contenido de la línea 9 en $archivo: $contenido_linea_9"
        fi
    fi
done
