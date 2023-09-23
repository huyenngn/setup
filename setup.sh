#!/bin/bash

# add repos
sudo apt update
sudo apt -y upgrade

# install essentials
sudo apt install -y --no-install-recommends build-essential ninja-build wget curl git \
                                            file python-is-python3 pkg-config libgmp-dev \
                                            libmpfr-dev libmpc-dev libexpat-dev dbus-x11 \
                                            libfdt-dev libglib2.0-dev libpixman-1-dev
# gnome extensions
sudo apt install -y gnome-tweaks gnome-shell-extensions gnome-shell-extension-manager

# reinstall nvidia drivers
sudo apt install --reinstall nvidia-driver-470 
sudo prime-select nvidia

# fix wrong time
timedatectl set-local-rtc 1 --adjust-system-clock

# minimize to dock on click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# uninstall firefox
sudo snap remove --purge firefox

# install apps
sudo apt install -y indicator-multiload nautilus-admin rpi-imager
sudo snap install vlc spotify

# install nodejs
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update
sudo apt-get install nodejs -y

# switch to windows shortcut
sudo mkdir /opt/switch_to_windows
sudo mkdir /usr/share/icons/switch_to_windows
sudo mv windows.desktop /usr/share/applications
sudo mv windows.sh /opt/switch_to_windows
sudo mv icon.png /usr/share/icons/switch_to_windows
sudo sed -i 's/GRUB_DEFAULT=.*/GRUB_DEFAULT=saved/' /etc/default/grub
sudo grub-set-default 0

# grub theme
sudo mkdir /boot/grub/themes/
sudo tar -xvf legion.tar -C /boot/grub/themes/
sudo sed 's/#GRUB_THEME.*//' /etc/default/grub
sudo echo "GRUB_THEME=/boot/grub/themes/legion/theme.txt" >> /etc/default/grub

sudo update-grub