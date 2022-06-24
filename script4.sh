#!/bin/bash
echo hola
echo -n "Escribe un número: "
# -n es para que no haga el salto de linea \n 
read limite

for (( i = 0; i < $limite; i++ )); do
    echo $i
done
