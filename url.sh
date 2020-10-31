#!/bin/sh
echo "---------------------------"
echo "Extracting Urls" 
echo "---------------------------"
sleep 1 
for i in 1 2 3 4 5 6 7 8 9 10
do
echo "Extracting Url $i" 
#Extraire les urls des 10 premieres photos est Save dans un fichier text
wget http://xkcd.com/$i -O - 2>/dev/null | grep -oP ' https.*jpg' | sed 's/"//' >> url.txt
done
echo "---------------------------" 
echo "Extracting Urls Done" 
echo "---------------------------" 
echo "\n" 
cat url.txt                       #Affichage des urls
echo "\n"
sleep 1
echo "---------------------------" 
echo "Downloading pictures" 
echo "---------------------------" 
for j in 1 2 3 4 5 6 7 8 9 10
do
echo "Downloading Picture $j"
sleep 0.5
done
#Telecharger les photos à partir des urls enregistrés sur le fichier text et Save dans un dossier Pics
wget -i /home/kl/Desktop/labs/lab5/url.txt - 2>/dev/null -P /home/kl/Desktop/labs/lab5/Pics
echo "---------------------------" 
echo "Downloading Pictures Done" 
echo "---------------------------" 
echo "\n" 
sleep 1.5 
echo "---------------------------" 
echo "Displaying Pictures" 
echo "---------------------------" 
sleep 1.5 
gsettings set org.gnome.eog.fullscreen seconds 1 #Modification de delay dans le slide (ce cas 1 seconde)
eog --slide-show /home/kl/Desktop/labs/lab5/Pics #Affichage des photos une après l'autres
sleep 1
echo "\n" 
echo "---------------------------" 
echo "Displaying Pictures Done" 
echo "---------------------------" 
sleep 1

