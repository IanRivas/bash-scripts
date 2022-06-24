#!/bin/bash

# nombre extensión número ruta

error() {
    echo $1
    exit 1
}

#si nos paso 4 argumentos
if [[ $# -ne 4 ]]; then
    error "Uso: Script nombre extensión número ruta"
fi

#si el directorio para guardar existe
if [[ ! -d $4 ]]; then
    error "Error: El Directorio NO Existe"
fi

#si la cantidad es negativo
if [[ $3 -lt 1 ]]; then
    error "Error: El numero de ficheros no puede ser menor a 1 "
fi

#necesitamos conseguir esto ./Tarea/fichero01.txt
for (( i = 1;i <= $3; i++ )); do 
    name="$4/$1$i.$2"
    if [ $i -lt 10 ];then
        name="$4/$10$i.$2"
    fi
    touch $name
    echo "Fichero $name creado" | tr -s /
done
