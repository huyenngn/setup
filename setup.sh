#!/bin/bash

sudo apt update
sudo apt -y upgrade

# Base
sudo apt install -y --no-install-recommends build-essential ninja-build wget curl git vim

# Python 
sudo apt install -y python-is-python3 python3-pip python3-venv python3-dev

# Nodejs
sudo apt install -y nodejs npm

# Java
sudo apt install -y default-jdk

# gnome extensions
sudo apt install -y gnome-tweaks gnome-shell-extensions pipx
pip3 install --upgrade gnome-extensions-cli
pipx install gnome-extensions-cli --system-site-packages
gext install Move_Clock@rmy.pobox.com gestureImprovements@gestures

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
sudo apt install -y indicator-multiload nautilus-admin
sudo snap install vlc spotify

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
echo "GRUB_THEME=/boot/grub/themes/legion/theme.txt" | sudo tee -a /etc/default/grub

sudo update-grub
