#!/bin/bash

################################################################################
# Script : renommer_fichiers.sh
# Description : Renomme les fichiers .txt d'un dossier
#               - Remplace les espaces par des underscores
#               - Convertit en minuscules
#               - Ajoute un préfixe avec la date
# Usage : ./renommer_fichiers.sh <dossier> [--dry-run]
# Auteur : [Votre nom]
# Date : [Date]
################################################################################
# TODO: Vérifier qu'un dossier est fourni en paramètre
# TODO: Vérifier que le dossier existe
# TODO: Récupérer la date du jour au format AAAAMMJJ
# TODO: Initialiser les compteurs
# TODO: Boucler sur tous les fichiers .txt du dossier
# TODO: Pour chaque fichier :
#       - Extraire le nom sans extension
#       - Remplacer les espaces par des underscores
#       - Convertir en minuscules
#       - Créer le nouveau nom avec le préfixe
# TODO: Afficher le résumé des opérations


DATE=$(date +%Y%m%d)
cd $1

if [ -f "$fichier" ]; then
    echo "Le fichier existe"
fi
for fichier in *.txt; do
    nom_base="${fichier%.txt}"                       #   Extraire le nom sans extension
    echo "Mon Fichier.txt" | tr ' ' '_'              #   Remplacer les espaces par des underscores
    echo "FICHIER.txt" | tr '[:upper:]' '[:lower:]'  #   Convertir en minuscules
    mv "$nom_base" "nouveau_nom.txt"                 #   Créer le nouveau nom avec le préfixe
    echo 


done
