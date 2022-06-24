#!/bin/bash

echo -n "Instalar Programa? [s/n]: "
read resultado
# esto lee el comando que instroducen

if [[ $resultado == [sS] ]]; then 
    echo "Instalando Programa ..."   
elif [[ $resultado == [nN] ]]; then
    echo "El Programa no se va a instalar"
else 
    echo "Opcion Invalida!"
fi


