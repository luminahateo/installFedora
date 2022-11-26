#!/bin/sh

echo "
=======================================================================
=                                                                     =
=                     Installation des logiciels natif Gnome          =
=                                                                     =
======================================================================="

#deinstall
#========================================#
sudo dnf autoremove -y rhythmbox baobab cheese epiphany gnome-{characters,dictionary,photos,user-docs}

#install
#========================================#
sudo dnf install -y gnome-{connections,terminal-nautilus,tweaks}
