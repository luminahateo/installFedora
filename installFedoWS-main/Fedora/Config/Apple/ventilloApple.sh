#!/bin/sh

#PourLesApple - iMac&MacBook/Pro

##Installation
sudo dnf install -y mbpfan

##Autostart
chkconfig --level 2345 mbpfan on && chkconfig --level 016 mbpfan off
