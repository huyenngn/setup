#!/bin/bash

sudo mkdir /opt/switch-to-window
sudo mkdir /usr/share/icons/switch-to-window
sudo mv switch-to-windows.desktop /usr/share/applications
sudo mv switch-to-windows.sh /opt/switch-to-window
sudo mv switch-to-windows.png /usr/share/icons/switch-to-window
sudo sed -i 's/GRUB_DEFAULT=.*/GRUB_DEFAULT=saved/' /etc/default/grub
sudo grub-set-default 0