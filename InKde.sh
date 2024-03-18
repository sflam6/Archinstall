# Display, firmware
sudo pacman -Syy && -Syu
sudo pacman -S mesa-vdpau linux-firmware packagekit-qt5 fwupd flatpak linux linux-headers --noconfirm --needed
sudo pacman -S firefox flameshot steam fuse2 unrar libreoffeice-still --noconfirm --needed

# Flatpak packages
flatpak install flathub com.spotify.Client com.dropbox.Client org.kde.krita org.winehq.Wine dev.lizardbyte.app.Sunshine

# yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Drivers by yay
yay -S mkinitcpio-firmware

# ufw firewall
sudo pacman -S ufw
sudo ufw enable
sudo systemctl enable ufw
sudo systemctl start ufw
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw reload

# sunshine firewall setting
sudo ufw allow 47984/tcp
sudo ufw allow 47989/tcp
sudo ufw allow 48010/tcp
sudo ufw allow 47988/udp
sudo ufw allow 47998/udp
sudo ufw allow 47999/udp
sudo ufw allow 48000/udp
sudo ufw allow 48002/udp
sudo ufw allow 48010/udp
sudo ufw reload