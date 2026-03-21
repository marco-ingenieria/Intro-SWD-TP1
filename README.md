# Ejercicio Práctico N°1 – Bash

Grupo:
* 

Se debe desarrollar un **script en Bash** que permita, mediante un **menú**, realizar distintas operaciones sobre un sistema Linux o MacOS.

El script utilizará:

* Un **parámetro optativo**
* Una **variable de entorno `FILENAME`** para guardar el nombre de un archivo.

El script deberá presentar un **menú con las siguientes opciones**.

---

# Opciones del menú

## 1) Crear entorno

Crear dentro del directorio **HOME** un directorio llamado:

```
EPNro1
```

Dentro de este directorio deberán existir las siguientes carpetas:

* `entrada`
* `salida`
* `procesado`

---

## 2) Correr proceso

Se debe ejecutar **en background** un proceso que corra un script llamado:

```
consolidar.sh
```

Este script se encuentra dentro del directorio `EPNro1` y debe:

1. Tomar cada archivo que ingrese en la carpeta `entrada`.
2. Adjuntar toda su información **al final del archivo**:

```
FILENAME.txt
```

ubicado en la carpeta `salida`.

3. Luego de procesarlo, el archivo original debe **moverse a la carpeta `procesado`**.

---

## 3) Listar alumnos ordenados por padrón

Si existe el archivo:

```
salida/FILENAME.txt
```

mostrar por pantalla el **listado de alumnos ordenado por número de padrón**.

---

## 4) Mostrar las 10 notas más altas

Si existe el archivo:

```
salida/FILENAME.txt
```

mostrar por pantalla **las 10 notas más altas del listado**.

---

## 5) Buscar alumno por padrón

Solicitar al usuario un **número de padrón** y mostrar por pantalla los **datos correspondientes** provenientes del archivo:

```
salida/FILENAME.txt
```

---

## 6) Salir

Salir del programa.

---

# Parámetro optativo

## `-d`

Si el usuario ejecuta el script con el parámetro:

```
-d
```

se deberá:

* Borrar **todo el entorno creado** en la carpeta `EPNro1`
* **Finalizar los procesos** creados en background.
