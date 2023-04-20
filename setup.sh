#!/bin/bash

downloads=/home/sofia/Downloads
applications=/home/sofia/.local/share/applications

# add repos
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
sudo apt update

# install essentials
sudo apt install -y --no-install-recommends build-essential ninja-build wget \
                                            file python3 pkg-config libgmp-dev \
                                            libmpfr-dev libmpc-dev libexpat-dev \
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

# install pipewire
sudo apt install pipewire pipewire-pulse
sudo apt install pipewire-audio-client-libraries
sudo apt install gstreamer1.0-pipewire libspa-0.2-bluetooth libspa-0.2-jack

# set pipewire as default audio daemon
systemctl --user stop pulseaudio.service pulseaudio.socket
systemctl --user disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio.service pulseaudio.socket
systemctl --user enable pipewire.socket pipewire-pulse.socket
systemctl --user start pipewire.socket pipewire-pulse.socket

# fix pipewire
sudo touch /usr/share/pipewire/media-session.d/with-pulseaudio 
systemctl restart --user pipewire pipewire-media-session pipewire-pulse
sudo cp -r /usr/share/pipewire /etc/

sudo apt install -y indicator-multiload nautilus-admin

# fix wrong time
timedatectl set-local-rtc 1 --adjust-system-clock

# minimize to dock on click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# uninstall firefox
sudo snap remove --purge firefox

# switch to windows shortcut
mkdir $applications/windows
mv windows.desktop $applications
mv windows.sh $applications/windows

# remap mac keyboard
sudo apt install git autokey-gtk
rm -rf $downloads"/gnome-macorm" -rf $downloads/gnome-macos-remap
git clone https://github.com/petrstepanov/gnome-macos-remap $downloads
chmod +x $downloads"/gnome-macos-remap/install.sh" $downloads"/gnome-macos-remap/uninstall.sh"
sh $downloads"/gnome-macos-remap/install.sh"
