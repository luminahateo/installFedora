#!/bin/sh

clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [ ] Configuration de FEDORA
 "

./"Fedora/Config/fedoConfig.sh" >> .verbose.processInst
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [X] Configuration de FEDORA
 [ ] Configuration de Gnome & Gnome-Shell
 "

./"Fedora/Config/gnomeShell.sh" >> .verbose.processInst
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [X] Configuration de FEDORA
 [X] Configuration de Gnome & Gnome-Shell
 [ ] Installation des logiciels natif Gnome
 "

./"Fedora/Software/gnomeSoft.sh" >> .verbose.processInst
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

  [X] Configuration de FEDORA
  [X] Configuration de Gnome & Gnome-Shell
  [X] Installation des logiciels natif Gnome
  [ ] Installation des logiciels DNF
  "

./"Fedora/Software/dnfSoft.sh" >> .verbose.processInst
sudo dnf clean packages >> .verbose.processInst
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

   [X] Configuration de FEDORA
   [X] Configuration de Gnome & Gnome-Shell
   [X] Installation des logiciels natif Gnome
   [X] Installation des logiciels DNF
   [ ] Installation des logiciels Flathub
   "

./"Fedora/Software/flatSoft.sh" 
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [X] Configuration de FEDORA
 [X] Configuration de Gnome & Gnome-Shell
 [X] Installation des logiciels natif Gnome
 [X] Installation des logiciels DNF
 [X] Installation des logiciels Flathub
 [ ] Installation des logiciels Externes
 
=======================================================================
"

#./"Fedora/Software/externSoft.sh" >> .verbose.processInst 
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [X] Configuration de FEDORA
 [X] Configuration de Gnome & Gnome-Shell
 [X] Installation des logiciels natif Gnome
 [X] Installation des logiciels DNF
 [X] Installation des logiciels Flathub
 [X] Installation des logiciels Externes
 [ ] Installation des logiciels Python
 "

./"Fedora/Software/pythonSoft.sh" >> .verbose.processInst
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [X] Configuration de FEDORA
 [X] Configuration de Gnome & Gnome-Shell
 [X] Installation des logiciels natif Gnome
 [X] Installation des logiciels DNF
 [X] Installation des logiciels Flathub
 [X] Installation des logiciels Externes
 [X] Installation des logiciels Python
 
=======================================================================
 [ ] Voulez-vous afficher le fichier extension?
     O/N
"
read -r EXT
if [ EXT == "O" ]; then
	cat "Fedora/Config/gnomeExt.md"
fi
clear
echo "
=======================================================================
=                                                                     =
=                     INSTALLATEUR DE FEDORA                          =
=                                                                     =
=======================================================================

 [X] Configuration de FEDORA
 [X] Configuration de Gnome & Gnome-Shell
 [X] Installation des logiciels natif Gnome
 [X] Installation des logiciels DNF
 [X] Installation des logiciels Flathub
 [X] Installation des logiciels Externes
 [X] Installation des logiciels Python
 
=======================================================================
 [ ] Voulez-vous afficher le compte rendu d'installation?
     O/N"

read -r CR

if [ CR == "N" ]; then
  rm .verbose.processInst
else
  clear && bat .verbose.processInst
  rm .verbose.processInst
fi
