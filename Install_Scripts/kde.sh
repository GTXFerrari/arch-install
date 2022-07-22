#!/bin/bash

##{KDE_Plasma}##
#pacman -S xorg plasma kde-applications plasma-nm packagekit-qt5
#####NOTE##### Add plasma-nm to kde taskbar via Panel options > Add Widgets > Networks menu,



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
