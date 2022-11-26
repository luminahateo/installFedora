#!/bin/sh

echo "
=======================================================================
=                                                                     =
=                     Configuration de FEDORA 36                      =
=                                                                     =
======================================================================="

#fedoConfig
#========================================#
sudo rm /etc/dnf/dnf.conf && sudo cp 'Fedora/Config/dnf.conf' /etc/dnf/

#Ethernet Config
#========================================#
#lspci #-v
#systemctl status NetworkManager
#systemctl start NetworkManager
#systemctl enable NetworkManager

#Si besoin de créer un connection
#========================================#
#nm-connection-editor

#sudo dnf install -y libimobiledevice-utils #pour réseau via USB (mobile)
#sudo dnf install -y usbmuxd
#sudo idevicepair pair

#RPM-fusion
#========================================#
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y rpmfusion-free-appstream-data
sudo dnf install -y rpmfusion-nonfree-appstream-data

#CODECS
#========================================#
sudo dnf install -y gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
sudo dnf install -y gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
sudo dnf install -y gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}

#Flathub
#========================================#
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#MAJ
#========================================#
sudo dnf update -y
flatpak update -y
