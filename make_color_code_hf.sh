#!/bin/sh

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

clear
echo "

+---------------------------+--------+
|SCRIPT MAKE_COLOR HARDWARE | FORUM  |
+---------------------------+--------+
"
if test -z "$2"; then
	#statements
echo "usage      
make_color_code_hf.sh SOURCE CIBLE"
echo "
encader votre code avec des balise tel que [<couleur>]...[/<couleur>]"
echo "Couleurs possible :"
echo "
rouge
vert
bleu
jaune
violet
"
else
	echo "Start"
	add="_orign"
	name_file=$1$add
	cp $1 $name_file
	


	#sed pour les commentaires en gris 

	sed -i -e "s/\(\#\#*.*\)/[#BDBDBD][i]\1[\/i][\/#BDBDBD]/g" $1
	
	#sed brut de remplacement des couleurs
	sed -i -e "s/vert/#8BC34A/g" $1
	sed -i -e "s/rouge/#E53935/g" $1
	sed -i -e "s/bleu/#1565C0/g" $1
	sed -i -e "s/jaune/#FFC107/g" $1
	sed -i -e "s/violet/#9C27B0/g" $1


	#sed de remplacement des chiffres en violet

	sed -i -e "s/\([0-9][0-9]*\)/[#9C27B0]\1[\/#9C27B0]/g" $1

	#sed de remplacement du texte entre guillemet quote et paranthese en vert
	sed -i -e "s/\(\"[a-zA-Z][a-zA-Z]*\"\)/[#8BC34A][b]\1[\/b][\/#8BC34A]/g" $1

	sed -i -e "s/\(([a-zA-Z][a-zA-Z]*)\)/[#009688][b]\1[\/b][\/#009688]/g" $1
	
	

######################################################
	mv $1 $2
	echo "done"
	echo "fichier original : $name_file"
	echo "nouveau fichier $2"
	cat $2
fi