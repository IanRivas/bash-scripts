#!/bin/bash

#argumentos - directorio
# Cuanto pesa un directorio

# -f si existe el fichero , -d si existe el directorio
if [[ ! -d $1 ]]; then
    echo "Error: El Directorio NO Existe"
    exit 1
fi

total=0
for f in `ls $1`; do
    name="$1/$f"
    if [ -f $name ]; then
        bytes=`ls -l $name | cut -d " " -f 5`
        echo $bytes
        (( total = $total + $bytes ))
    fi
done

echo -e "\nPeso Total: $total"
