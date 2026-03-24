#!/bin/bash

echo "Ingrese su padron: "
read padronIngresado

input=~/"/EPNro1/salida/$FILENAME.txt"

if [ -f "$input" ]; then

    while IFS= read -r line || [[ -n "$line" ]]
    do

        IFS=" "
        read -a array <<< $line
        padronActual="${array[0]}"
        if [[ $padronActual == $padronIngresado ]];then
        echo "$line"
        break
        fi  
    done < "$input"

else

   echo "No se ha encontrado el archivo de salida"

fi