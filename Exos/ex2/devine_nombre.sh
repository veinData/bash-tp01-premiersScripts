#!/bin/bash

################################################################################
# Script : devine_nombre.sh
# Description : Jeu de devinette - trouver un nombre aléatoire
# Usage : ./devine_nombre.sh <min> <max> [difficile]
# Auteur : [Votre nom]
# Date : [Date]
################################################################################
nombre=$(( $RANDOM % $2 + $1 ))
n=5
e=1

for i in {1..5}
do
    echo "Nombre d'essais restants : $n " 
    echo "Votre proposition : "  
    #echo "$nombre "  

    read test

    if [ $test -lt $nombre ] || [ $test -gt $nombre ]; then
        if [ $test -lt $nombre ]; then
            echo "Trop petit !"


        else
            echo "Trop grand !"

                    

        fi
            
        
        n=$((n-1))
        e=$((1+e))    

    else
        
        echo "Bravo ! Vous avez trouvé en $e essais !" 
        break
    fi

done
    
if [ $n -eq 0 ]; then
    echo "C'est l'heure de la sieste du mercredi !!!" 


fi
