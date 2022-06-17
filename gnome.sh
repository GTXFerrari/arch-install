#!/bin/bash

##{Gnome}##
#pacman -S xorg gnome gnome-extra gnome-tweaks gnome-themes-extra



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