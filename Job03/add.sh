#!/bin/bash

if [ "$#" -ne 2 ]; then
   echo "usage: $0 <nombre1> <nombre2>"
   exit 1
fi

nombre1="$1"
nombre2="$2"

resultat=$((nombre1 + nombre2))

echo "la somme de $nombre1 et $nombre2 est égale à $resultat."

