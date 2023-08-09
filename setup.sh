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

# for linux-typer
sudo apt-get install -y libxdo-dev libgtk-3-dev

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
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# switch to windows shortcut
mkdir /opt/switch_to_windows
mkdir /usr/share/icons/switch_to_windows
mv windows.desktop /usr/share/applications
mv windows.sh /opt/switch_to_windows
mv icon.png /usr/share/icons/switch_to_windows
