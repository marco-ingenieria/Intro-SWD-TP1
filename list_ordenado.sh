#!/bin/bash

echo "Datos ordenados por numero de padron: "

if [ -f ~/EPNro1/salida/"$FILENAME".txt" ]; then
   
   sort -k1,1n ~/EPNro1/salida/"$FILENAME".txt

else

   echo "No se ha encontrado el archivo de salida"

fi
