#!/bin/bash

# Directorio que contiene los archivos .stats
directorio="stats"

# Iterar sobre cada archivo .stats en el directorio
for archivo in "$directorio"/*.stats; do
    if [ -f "$archivo" ]; then
        # Extraer la línea 9 del archivo actual y verificar si contiene más de un "1"
        contenido_linea_9=$(sed -n '9p' "$archivo")
        num_ocurrencias=$(echo "$contenido_linea_9" | grep -o "2" | wc -l)
        if [ "$num_ocurrencias" -gt 1 ]; then
            echo "Contenido de la línea 9 en $archivo: $contenido_linea_9"
        fi
    fi
done