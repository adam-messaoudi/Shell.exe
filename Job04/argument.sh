#!/bin/bash

# vérifie s'il y a deux arguments en entrée
if [ $# -ne 2 ]; then
   echo "usage: $0 <nouveaufichier> <contenufichier>"
   exit 1
fi

# récupère les noms de fichier à partir des arguments
nouveaufichier="$1"
contenufichier="$2"

# utilise la redirection pour copier le contenu du fichier source dans le nouveau fichier >
cat "$contenufichier" > "$nouveaufichier"

echo "le contenu de $contenufichier a été copié dans $nouveaufichier"
