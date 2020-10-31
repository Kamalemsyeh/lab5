#!/bin/sh
#Affichage du message et enregistrement de l'argument dans la variable Path
read -p "Entrer le chemin vers le répertoire " Path
if [ ! -d "$Path" ]                 #Test si le chemin n'est pas un répertoire
then
    echo "Repertoire n'existe pas." #Affichage du message d'erreur si condition est vérifiée
else cd $Path			    #Sinon se placer dans le repértoire 
	ls -d */	            #Lister les dossiers du répertoire
fi				    #Fin Test
