#!/bin/bash
PASSWD="$(zenity --password --title=Authentication)\n"

echo -e $PASSWD | sudo -S grub-reboot 2
sleep 2
sudo reboot

