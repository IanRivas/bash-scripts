#!/bin/bash

#argumentos: prefijo directorio

error() {
    echo $1
    exit 1
}

#si nos paso 2 argumentos
if [[ $# -ne 2 ]]; then
    error "Uso: $0 nombre extensión número ruta"
fi

#si el directorio para guardar existe
if [[ ! -d $2 ]]; then
    error "Error: El Directorio NO Existe"
fi


#necesitamos conseguir esto canciones/$1cancion01.txt
for f in `ls $2`; do 
    name=$2/$f
    new_name=$2/$1$f
    mv $name $new_name
    echo "$name -> $new_name"
done
