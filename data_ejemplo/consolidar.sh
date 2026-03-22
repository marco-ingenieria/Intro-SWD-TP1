#!/bin/bash

echo "HOLA SOY CONSOLIDAR"

while [ 1 -eq 1 ]; do

for file in ~/EPNro1/entrada/*.txt;
  do
    if [ -f "$file" ]; then
    cat $file >> ~/EPNro1/salida/$FILENAME.txt
    mv $file ~/EPNro1/procesado/
    fi
  done
done
