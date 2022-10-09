sudo pacman-mirrors --fasttrack # pick best mirror
sudo pacman -Syu # update system
sudo systemctl enable fstrim.timer # nicer to SSDs


git clone https://aur.archlinux.org/yay.git # AUR manager
cd yay
makepkg -si

pamac ugrade -a # update pamac for all future steps
pamac install snapd libpamac-snap-plugin # add snaps
sudo systemctl enable --now snapd.socket

pamac install flatpak libpamac-flatpak-plugin # add flatpak


#pamac build ttf-ms-fonts # add microsoft truetypefonts
yay -S ttf-ms-fonts # add microsoft truetypefonts
