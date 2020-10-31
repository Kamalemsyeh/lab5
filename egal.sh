#!/bin/sh
echo -n "Entrez deux nombres:"                #Affichez le message
read var1 var2 				      #Lecture des arguments et Save dans les variables respectivement 
if [ $var1 -gt $var2 ];			      #Premier test des valeurs
then
	echo "$var1 est plus grand que $var2" #Affichage du message si conditionest vérifiée
elif  [ $var1 -lt $var2 ];		      #Sinon Deuxime test 
then 
	echo "$var1 est plus petit que $var2" #Affichage du message si conditionest vérifiée
else 
	echo "$var1 est égal à $var2"	      #Affichage du message si conditionn'est pas vérifiée
fi					      #Fin test
