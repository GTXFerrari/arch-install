#!/bin/bash
#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+System_Setup+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+#

ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
reflector -c 'United States' -a 6 -p https --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syy
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1   localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:{ENTERPASSWORD} | chpasswd
useradd -m jake
echo jake:{ENTERPASSWORD} | chpasswd

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+System_Applications+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+#

###{Bootloader}###

##(Systemd-boot)## requires no additional packages (refer to ArchWiki for installation instructions)

##(Grub)##
#pacman -S grub efibootmgr os-prober
#grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
#grub-mkconfig -o /boot/grub/grub.cfg

######NOTE##### If dual-booting add OS prober to /etc/default/grub & rerun mkconfig

###{Networking}###

##(Network Manager)## 
#pacman -S networkmanager nm-connection-editor network-manager-applet iwd avahi    # Note - nm applet not needed for KDE
#systemctl enable NetworkManager.service
#systemctl enable avahi-daemon.service
#systemctl enable iwd.service

##(Systemd-networkd)## requires no additional packages for basic wired functionality (Wireless requires wpa_supplicant or iwd, Steam requires lib32-systemd) 
#pacman -S lib32-systemd iwd 
#systemctl enable systemd-networkd.service 
#systemctl enable systemd-resolvd.service



###{System Applications}###
pacman -S base-devel dialog mtools xdg-user-dirs xdg-utils cifs-utils gvfs udisks2 gvfs-smb bind cups cups-pdf hplip rsync openssh ssh-audit zsh zsh-completions firefox neofetch htop cmatrix figlet cowsay alacritty btop onefetch cronie wireshark-qt font-manager 

systemctl enable cups.socket		# Printing
systemctl enable reflector.timer	# Pacman Mirror Sorting (Edit /etc/reflector/reflector.conf with desired settings)
systemctl enable sshd.service		# SSH
systemctl enable fstrim.timer		# SSD Trim
systemctl enable cronie.service		# Cron Job Service

usermod -aG wireshark jake

###{File Manager}###

##(Ranger)##
#pacman -S ranger atool ueberzug

##(PCManFM)##
#pacman -S pcmanfm-gtk3 

##(Dolphin)##
#pacman -S dolphin dolphin-plugins kompare kdegraphics-thumbnailers kimageformats qt5-imageformats kdesk-thumbnailers ffmpegthumbs taglib

##(Nautilus)##
#pacman -s nautilus filemanager-actions nautilus-sendto nautilus-sendto nautilus-terminal seahorse-nautilus

#####NOTE##### nautilus-bluetooth, nautilus-admin, and nautilus-git can be added from the AUR

##(Thunar)##
#pacman -S thunar file-roller ark xarchiver engrampa thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler 


###{Gaming}###
#pacman -S steam lutris discord

#####NOTE##### Install proton-ge-custom-bin & mangohud+goverlay from the AUR, Steam requires microsoft fonts to work correctly


###{Media}###
#pacman -S mpd mpc mpv ncmpcpp

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+Virtualization+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+#

##{QEMU/Libvirt/KVM}##
#pacman -S virt-manager qemu-full qemu-emulators-full dmidecode edk2-ovmf iptables-nft dnsmasq openbsd-netcat bridge-utils vde2 libvirt swtpm
#systemctl enable libvirtd.service
#usermod -aG libvirt jake

##(Hyper-V Guest)##
#pacman -S hyperv xf86-video-fbdev
#systemctl enable hv_fcopy_daemon.service
#systemctl enable hv_kvp_daemon.service
#systemctl enable hv_vss_daemon.service

#####NOTE##### Refer to wiki for enhanced session details

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+Graphics Drivers+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+#

##{Nvidia}##
#pacman -S nvidia nvidia-utils nvidia-settings lib32-nvidia-utils nvidia-dkms

#####NOTE#####[Add "nvidia,nvidia_modeset,nvidia_uvm,nvidia_drm" module in /etc/mkinitcpio.conf | run mkinitcpio -P] 
#####NOTE#####[Add "nvidia-drm.modeset=1" kernel parameter (Dont use modeset if using GPU passthrough)
#####NOTE#####[Add "3440x1440x32,auto" to in /etc/default/grub in "GRUB_GFXMODE=] [Uncomment & set console to max in systemd boot loader.conf]

##{Intel}##
#pacman -S mesa lib32-mesa vulkan-intel

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+Audio+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+#

###{Pipewire}##
#pacman -S pipewire pipewire-docs pipewire-alsa lib32-pipewire easyeffects alsa-utils alsa-plugins pipewire-pulse wireplumber wireplumber-docs pipewire-jack lib32-pipewire-jack pulsemixer bluez bluez-utils 
#systemctl enable bluetooth.service

#+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+Laptop Power+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+#

#pacman -S acpid tlp
#systemctl enable tlp.service
#systemctl enable acpid.service


echo "jake ALL=(ALL) ALL" >> /etc/sudoers.d/jake
printf "\e[1;32mDone! Type exit, umount -R /mnt and reboot.\e[0m"
