#!/bin/bash

if [ "$1" = "hello" ]; then
echo "bonjour, je suis un script !"

elif [ "$1" = "bye" ]; then
echo "au revoir et bonne journée !"

else
echo "argument non reconnu, utilisation : ./hello_bye.sh hello ou ./hello_bye.sh bye"
fi
