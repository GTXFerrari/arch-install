### Arch Linux Post Installation ###

1.  Add compile optimizations to makepkg.conf (CFLAGS="march=native -O2 -pipe -fno-plt){Remove any -march or -mtune flags from CFLAGS (RUSTFLAGS="-C opt-level=2 -C target-cpu=native") (MAKEFLAGS="-j$(nproc)"
2.	Install vim-plug and pull nvim config (neovim config goes ~/.config/nvim/
3.	Install paru or yay 
4.	Install ohmyzsh,powerlevel10k,zsh-autosuggestions
5.	Update reflector settings for timer

###############################################################################################################################################################################################################################################
### AUR Packages ###

1.  razergenie
2.  openrgb
3.  vmrc
4.  meslolgsnf-nerd-font


[vim-plug]

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

[yay]

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

[paru]

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
