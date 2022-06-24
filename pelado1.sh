#!/bin/bash

# lo ponemos entre parentesis para que ejecute el comando y el resultado se guarde en response
while read line; do
  response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$line")
  echo $line: $response
done < pages.txt
# un while que recorre mi archivo y cada linea es la variable line
# le hace un curl a todas mis paginas 
# y me imprime el resultado
