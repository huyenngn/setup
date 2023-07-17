#!/bin/bash

# add repos
sudo apt update

# install essentials
sudo apt install -y --no-install-recommends build-essential ninja-build wget curl \
                                            file python-is-python3 pkg-config libgmp-dev \
                                            libmpfr-dev libmpc-dev libexpat-dev dbus-x11 \
                                            libfdt-dev libglib2.0-dev libpixman-1-dev
# gnome extensions
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-shell-extension-manager

# for linux-typer
sudo apt-get install -y libxdo-dev
sudo apt-get install -y libgtk-3-dev

# reinstall nvidia drivers
sudo apt install --reinstall nvidia-driver-470 
sudo prime-select nvidia

sudo apt install -y indicator-multiload nautilus-admin

# fix wrong time
timedatectl set-local-rtc 1 --adjust-system-clock

# minimize to dock on click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# uninstall firefox
sudo snap remove --purge firefox

# switch to windows shortcut
mkdir /opt/switch_to_windows
mkdir /usr/share/icons/switch_to_windows
mv windows.desktop /usr/share/applications
mv windows.sh /opt/switch_to_windows
mv icon.png /usr/share/icons/switch_to_windows

# remap mac keyboard
sudo apt install autokey-gtk
git clone https://github.com/petrstepanov/gnome-macos-remap
chmod +x "./gnome-macos-remap/install.sh "./gnome-macos-remap/uninstall.sh"
sh "./gnome-macos-remap/install.sh"

