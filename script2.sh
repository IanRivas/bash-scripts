#!/bin/bash

echo -n "Escribe un número: "
read valor

if [[ $valor -le 5 ]]; then
    echo "Tu numero es menor o igual que 5"
else
    echo "Tu numero es mayor que 5"
fi

# -gt greater than
# -ge greater or equal 
# -lt lower than 
# -le lower or equal
# -eq equal
# -ne not equal