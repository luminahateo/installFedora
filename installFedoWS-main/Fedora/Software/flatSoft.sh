#!/bin/sh
clear
echo "
=======================================================================
=                                                                     =
=                     Installation des logiciels Flathub              =
=                                                                     =
======================================================================="

#MiseAJour
#========================================#
flatpak update -y
#flatpak install -y  org.gtk.Gtk3theme.Adwaita-dark #si problème de switch Dark/Light

#Bureautique
#========================================#
flatpak install -y io.posidon.Paper

#Internet
#========================================#
flatpak install -y com.tutanota.Tutanota

#Graphisme
#========================================#
flatpak install -y com.github.huluti.Curtail
flatpak install -y io.github.lainsce.Emulsion
flatpak install -y org.gustavoperedo.FontDownloader
flatpak install -y org.gimp.GIMP > 1

#Utilitaire
#========================================#
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y me.dusansimic.DynamicWallpaper

#Programmation
#========================================#
flatpak install -y io.github.shiftey.Desktop
flatpak install -y net.sonic_pi.SonicPi

#AudioVideo
#========================================#
flatpak install -y com.github.taiko2k.tauonmb
flatpak install -y com.spotify.Client
flatpak install -y com.bitwig.BitwigStudio
flatpak install -y com.github.polymeilex.neothesia

#Maps
flatpak install -y org.qgis.qgis
