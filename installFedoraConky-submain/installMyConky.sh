#!/bin/sh

clear

install=0

echo "
=======================================================================
INSTALLATION MYCONKY
=======================================================================
Quel est votre choix de couleur?
1 - Basic
2 - Aqua
3 - Rouge
0 - Exit"
read -r choixColor
if [ "$choixColor" = "1" ]; then
  cp ColorConky/conkyrc ~/
  mv ~/conkyrc ~/.conkyrc
  install=1
elif [ "$choixColor" = "2" ]; then
  cp ColorConky/conkyrc_cyan ~/
  mv ~/conkyrc_cyan ~/.conkyrc
  install=1
elif [ "$choixColor" = "3" ]; then
  cp ColorConky/conkyrc_red ~/
  mv ~/conkyrc_red ~/.conkyrc
  install=1
else
  echo "=======================================================================
Fin de programme
======================================================================="
fi
if [ "$verif" = "1" ]; then
  echo "
=======================================================================
INSTALLATION MYCONKY OK
======================================================================="
fi

#Installation autiostart Gnome 3 / 4
cp Lanceur/myConky.desktop ~/.config/autostart/

#Lancement de myConky
cd /usr/bin/ && ./conky
