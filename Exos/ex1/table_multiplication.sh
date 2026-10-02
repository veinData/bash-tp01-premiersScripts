#!/bin/bash

################################################################################
# Script : table_multiplication.sh
# Description : Affiche la table de multiplication d'un nombre
# Auteur : [Votre nom]
# Date : [Date]
################################################################################

echo "Entrez un nombre : "
read nombre


echo "Table de multiplication de $nombre : "
for i in {1..10}
do
    echo "$nombre x $i = $((nombre*i)) "
done