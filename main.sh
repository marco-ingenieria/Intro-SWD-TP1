#!/bin/bash

export FILENAME=$_
while getopts "d" OPT; do
    case $OPT in
    d)
        bash $(dirname $0)"/borrar_entorno.sh"
        exit 0
        ;;
    esac
done
while [ 1 -eq 1 ];

do

echo "1) Crear Entorno"
echo "2) Correr proceso"
echo "3) Lista de alumnos ordenados por numero de padron"
echo "4) 10 notas mas altas"
echo "5) Datos de alumno por numero de padron"
echo "6) Salir"
echo ""

read opcion

case $opcion in
  1)
    echo "1"
    mkdir -p ~/EPNro1
    mkdir -p ~/EPNro1/entrada
    mkdir -p ~/EPNro1/salida
    mkdir -p ~/EPNro1/procesado
    cp data_ejemplo/consolidar.sh ~/EPNro1/
    cp data_ejemplo/listado*.txt ~/EPNro1/entrada
    ;;
  2)
    echo "2"
    bash ~/EPNro1/consolidar.sh &
    ;;

  3)
    echo "3"
    bash $(dirname $0)"/list_ordenado.sh" 
    ;;
  4)
    echo "4"
    bash $(dirname $0)"/top10.sh"
    ;;
  5)
    echo "5"
    bash $(dirname $0)"/mostrar_1.sh"
    ;;
  6)
    echo "6"
    exit 0
     ;;
esac
done
