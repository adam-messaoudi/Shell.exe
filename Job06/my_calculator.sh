#!/bin/bash

# Vérifie si suffisamment d'arguments sont passés
if [ $# -ne 3 ]; then
   echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
   exit 1
fi

nombre1="$1"
operateur="$2"
nombre2="$3"

# Effectue le calcul en fonction de l'opérateur
case "$operateur" in
"x")
    resultat=$((nombre1 * nombre2))
    ;;
"+")
    resultat=$((nombre1 + nombre2))
    ;;
"-")
    resultat=$((nombre1 - nombre2))
    ;;
"/")
    if [ "$nombre2" -eq 0 ]; then
        echo "Erreur : division par zéro."
        exit 1
    fi
    resultat=$((nombre1 / nombre2))
    ;;
*)
    echo "Opérateur non valide. Utilisez l'un des opérateurs suivants : x, +, -, /"
    exit 1
    ;;
esac

echo "Le résultat de $nombre1 $operateur $nombre2 est égal à $resultat."

