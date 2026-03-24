#!/bin/bash

if [ "$1" = "-d" ]; then
   echo "Reseteando entorno..."
   pkill -f consolidar.sh
   rm -rf  ~/EPNro1
   echo "Listo"
   exit 0
fi
