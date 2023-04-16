#!/bin/bash
for i in {1..5}
do
    cadena=$(wc -l loremipsum-$i.txt)
    numero=$(echo "$cadena" |  sed -r 's/^([^.]+).*$/\1/; s/^[^0-9]*([0-9]+).*$/\1/')
    echo "loremipsum-$i.txt tiene $numero lineas."
done