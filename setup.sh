#!/bin/bash

downloads=/home/sofia/Downloads/


sudo apt-get install -y --no-install-recommends build-essential ninja-build wget file python3 pkg-config libgmp-dev libmpfr-dev libmpc-dev libexpat-dev libfdt-dev libglib2.0-dev libpixman-1-dev
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-shell-extension-manager
sudo apt install -y menulibre
sudo apt install -y indicator-multiload
sudo apt-get install -y nautilus-admin
sudo apt-get install -y libxdo-dev
sudo apt-get install libgtk-3-dev

timedatectl set-local-rtc 1 --adjust-system-clock
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

sudo apt install --reinstall nvidia-driver-470 
sudo prime-select nvidia

sudo apt-get install git autokey-gtk
rm -rf $downloads/gnome-macorm -rf $downloads/gnome-macos-remap
git clone https://github.com/petrstepanov/gnome-macos-remap $downloads
chmod +x $downloads"/gnome-macos-remap/install.sh" $downloads"/gnome-macos-remap/uninstall.sh"
sh $downloads"/gnome-macos-remap/install.sh"