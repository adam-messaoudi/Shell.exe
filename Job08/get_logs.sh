#!/bin/bash

utilisateur="debian"

# Format de date au format jj-mm-aaaa-HH:MM
date_format=$(date +"%d-%m-%Y-%H:%M")

# Exemple : compter les connexions de l'utilisateur
nombre_connexion=$(who | grep "$utilisateur" | wc -l)

# Création du fichier avec le nombre de connexion
echo "$nombre_connexion" > "number_connection-$date_format.txt"

# Archiver le fichier et le déplacer dans le dossier backup
tar -czvf "/home/debian/Shell.exe1/Job08/Backup/number_connection-$date_format.tar" "number_connection-$date_format.txt"






