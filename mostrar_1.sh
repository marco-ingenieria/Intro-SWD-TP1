#!/bin/bash

echo "La variable FILENAME es: $FILENAME"

read padronIngresado
echo "El padron ingresado es: $padronIngresado"

input=~/"/EPNro1/salida/$FILENAME.txt"

while IFS= read -r line || [ -n "$line" ]
do
    IFS=" "
    read -a array <<< $line
    padronActual="${array[0]}"
    if [[ $padronActual == $padronIngresado ]];then
    echo "$line"
    fi  
done < "$input"