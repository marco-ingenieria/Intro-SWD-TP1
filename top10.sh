#!/bin/bash

if [ -f ~/EPNro1/salida/"$FILENAME".txt ]; then
    echo "Las notas más altas son:"
    head <(sort -k 5 -nr ~/EPNro1/salida/"$FILENAME".txt) | cut -d " " -f 5
else;
    echo "No se encontró el archivo \"$FILENAME\""
fi
