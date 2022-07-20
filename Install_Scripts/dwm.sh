#!/bin/bash

##{dwm}##
#pacman -S xorg-server xorg-xinit nitrogen picom qt5ct lxappearance gnome-themes-extra dunst gnome-keyring libsecret seahorse blueman ttf-joypixels xorg-xsetroot
#####NOTE#####  libxft-bgra can be installed from the AUR for emoji support, 


###{Display Manager}### 

##(GDM aka Gnome Display Manager)##
#pacman -S gdm
#systemctl enable gdm.service

##(SDDM aka Simple Desktop Display Manager)##
#pacman -S sddm sddm-kcm 
#systemctl enable sddm.service

##(LightDM)##
#pacman -S lightdm lightdm-gtk-greeter lightdm-webkit2-greeter
#systemctl enable lightdm.service
#####NOTE##### Use AUR to install lightdm-webkit-theme-aether && install xinit-xsession
