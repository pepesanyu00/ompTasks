#!/bin/bash

# Directorio que contiene los archivos .stats
directorio="stats"

# Iterar sobre cada archivo .stats en el directorio
for archivo in "$directorio"/*.stats; do
    if [ -f "$archivo" ]; then
        # Mostrar el contenido de la línea 9 del archivo actual
        contenido_linea_9=$(sed -n '9p' "$archivo")
        echo "Contenido de la línea 9 en $archivo: $contenido_linea_9"
    fi
done
