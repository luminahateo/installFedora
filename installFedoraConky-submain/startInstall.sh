#!/bin/sh

clear

echo "
=======================================================================
MISE A JOUR SYSTEME
INSTALLATION CONKY
=======================================================================
Quel est votre Système [Fédora ou Dedian] ? (Fed/Deb)"
read -r choixSys
if [ "$choixSys" = "Fed" ]; then
  echo "
=======================================================================
Voulez-vous mettre à jour votre Système avant installation de MyConky?
(Oui/Non)"
  read -r choixMaj
  if [ "$choixMaj" = "Oui" ]; then
    sudo dnf update -y
  fi
  if [ ! -f "/usr/bin/conky" ]; then
    sudo dnf install conky -y
  fi
  echo "=======================================================================
MISE A JOUR SYSTEME : OK
INSTALLATION CONKY : OK
======================================================================="
  ./installMyConky.sh
elif [ "$choixSys" = "Deb" ]; then
  echo "
=======================================================================
Voulez-vous mettre à jour votre Système avant installation de MyConky? (O/N)"
  read -r choixMaj
  if [ "$choixMaj" = "Oui" ]; then
    sudo apt upgrade -y && sudo apt update -y
  fi
  if [ ! -f "/usr/bin/conky" ]; then
    sudo apt install conky -y
  fi
  echo "=======================================================================
MISE A JOUR SYSTEME : OK
INSTALLATION CONKY : OK
======================================================================="
  ./installMyConky.sh
else
    echo "=======================================================================
Fin de programme
======================================================================="
fi
