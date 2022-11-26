#!/bin/sh

mkdir ~/Applications
cd ~/Applications

#Natron
wget https://github.com/NatronGitHub/Natron/releases/download/v2.4.4/Natron-2.4.4-Linux-x86_64.tgz
tar zxvf Natron-2.4.4-Linux-x86_64.tgz
./Natron-2.4.4-Linux-x86_64

#simplenote
wget https://github.com/Automattic/simplenote-electron/releases/download/v2.21.0/Simplenote-linux-2.21.0-x86_64.rpm
sudo dnf install -y Simplenote-linux-2.21.0-x86_64.rpm

#atom.io
wget https://atom-installer.github.com/v1.63.1/atom.x86_64.rpm
sudo dnf install -y atom.x86_64.rpm

#FreeTube
wget https://github.com/FreeTubeApp/FreeTube/releases/download/v0.18.0-beta/freetube_0.18.0_amd64.rpm
sudo dnf install -y freetube_0.18.0_amd64.rpm
