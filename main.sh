#!/bin/bash

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
     ;;
  2)
     echo "2"
	cp data_ejemplo/consolidar.sh ~/EPNro1/
	bash ~/EPNro1/consolidar.sh &
     ;;

  3)
     echo "3"
     ;;
  4)
     echo "4"
     ;;
  5)
     echo "5"
     ;;
  6)
     echo "6"
	exit 0
     ;;

esac

done
