#!/bin/sh

echo "
=======================================================================
=                                                                     =
=                     Installation des logiciels DNF                  =
=                                                                     =
======================================================================="

#MiseAJour
#========================================#
sudo dnf update -y

#Bureautique
#========================================#
sudo dnf install -y libreoffice libreoffice-{grammalecte,graphicfilter} dialect pdfarranger

#internet
#========================================#
sudo dnf install -y discord chatterino2 streamlink fragments thunderbird filezilla

#graphisme
#========================================#
sudo dnf install -y blender inkscape krita shotwell darktable #scribus #gimp

#graphisme add-on
#sudo dnf install -y blender-{luxcorerender,rpm-macros} YafaRay-blender
#sudo dnf install -y gimp-{data-extras,gimp-dds-plugin,lqr-plugin,luminosity-masks,paint-studio,resynthesizer,save-for-web,separate+,wavelet-decompose,wavelet-denoise-plugin,focusblur-plugin,fourier-plugin,heif-plugin,jxl-plugin} gimpfx-foundry gmic-gimp ufraw-gimp xsane-gimp gutenprint-plugin
#sudo dnf install -y inkscape-{view,psd}
#sudo dnf install -y scribus-generator


#programmation
#========================================#
sudo dnf install -y godot godot-{headless,runner,server}

#Utilitaire_terminal
#========================================#
sudo dnf copr enable atim/ytop -y && sudo dnf install -y ytop
sudo dnf install -y bat cmatrix links speedtest-cli neofetch cpufetch youtube-dl ffmpeg

#utilitaire
#========================================#
sudo dnf install -y secrets rpi-imager #dl-fedora

#AudioVideo
#========================================#
sudo dnf install -y soundconverter tuxguitar
sudo dnf install -y vlc vlc-extras kdenlive

#Jeux
#========================================#
sudo dnf install -y steam lutris

#Serveur
#========================================#
sudo dnf install -y cockpit
sudo systemctl enable --now cockpit.socket
sudo firewall-cmd --add-service=cockpit --permanent
sudo firewall-cmd --reload
#acces https://serveur:9090
