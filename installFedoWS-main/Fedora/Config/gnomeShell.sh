#!/bin/sh

echo "
=======================================================================
=                                                                     =
=                     Configuration de Gnome-Shell                    =
=                                                                     =
======================================================================="

#Interface minima
#========================================#
gsettings set org.gnome.desktop.wm.preferences button-layout ''
#rajouter le raccourci Ctrl+Q pour fermer les fenetres

#Extensions
#========================================#
#deinstall
sudo dnf autoremove -y gnome-shell-extension-{background-logo,apps-menu,launch-new-instance,window-list}

#install
sudo dnf install -y gnome-shell-extension-{pop-shell,appindicator}


