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
encader votre code avec des balise tel que \[<couleur>\]...\[/<couleur>\]"
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

	sed -i -e "s/\(\#\#*.*\)/\[#8D6E63\]\[i\]\1\[\/i\]\[\/#8D6E63\]/g" $1

	#sed brut de remplacement des couleurs
	sed -i -e "s/\[vert\]\(.*\)\[\/vert\]/\[#8BC34A\]\1\[\/#8BC34A\]/g" $1
	sed -i -e "s/\[rouge\]\(.*\)\[\/rouge\]/\[#E53935\]\1\[\/#E53935\]/g" $1
	sed -i -e "s/\[bleu\]\(.*\)\[\/bleu\]/\[#1565C0\]\1\[\/#1565C0\]/g" $1
	sed -i -e "s/\[jaune\]\(.*\)\[\/jaune\]/\[#FFC107\]\1\[\/#FFC107\]/g" $1
	sed -i -e "s/\[violet\]\(.*\)\[\/violet\]/\[#9C27B0\]\1\[\/#9C27B0\]/g" $1






	#sed de remplacement du texte entre guillemet quote et paranthese en vert
	#sed -i -e "s/\(\"\[a-zA-Z\]\[a-zA-Z\]*\"\)/\[#8BC34A\]\[b\]\1\[\/b\]\[\/#8BC34A\]/g" $1

	#sed -i -e "s/\((\[a-zA-Z0-9\]\[a-zA-Z0-9\]*)\)/\[#9C27B0\]\[b\]\1\[\/b\]\[\/#9C27B0\]/g" $1
	
	

######################################################
	mv $1 $2
	echo "done"
	echo "fichier original : $name_file"
	echo "nouveau fichier $2"
	cat $2
fi