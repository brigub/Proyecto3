#!/bin/bash

archivo=$1
inicio=$2
fin=$3

promedio=$(awk -v i=$inicio -v f=$fin 'NR>1{dist=$f-$i; suma+=dist; n++} END{print suma/n}' $archivo)

echo "Promedio de distancias: $promedio"

