#!/bin/bash

echo -n "Escribe un número: "
read valor

if [ $valor -ge 5 -a $valor -le 10 ]; then
    echo "Tu numero esta en el rango [5, 10]"
else
    echo "Tu numero no esta en el rango"
fi

# -a es and
# -o es or 