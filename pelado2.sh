#!/bin/bash

function saludar(){
  echo Hola $1
}
# las funciones se ejecutan con el nombre y un espacio

# $@ son todos los argumentos que le pase
for USUARIO in ${@}; do
  saludar $USUARIO
done
