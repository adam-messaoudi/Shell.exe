#!/bin/bash

# Emplacement du fichier CSV contenant les informations des utilisateurs
csv_file="/home/debian/Shell.exe1/Job09/Shell_Userlist.csv"  

# Lire le fichier CSV et créer les utilisateurs en fonction du fichier
while read -r username password is_admin; do
    sudo useradd -m -p "$(echo "$password" | openssl passwd -1 -stdin)" "$username"
    echo "L'utilisateur $username a été créé."

# Si l'utilisateur est un admin = permission super utilisateur
    if [ "$is_admin" == "admin" ]; then
      sudo usermod -aG sudo "$username"
      echo "L'utilisateur $username a été promu administrateur."
    fi
done < "$csv_file"
