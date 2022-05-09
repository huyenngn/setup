# setup

```
sudo apt-get install --no-install-recommends build-essential ninja-build wget file python3 pkg-config libgmp-dev libmpfr-dev libmpc-dev libexpat-dev libfdt-dev libglib2.0-dev libpixman-1-dev
```

```
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions
sudo apt install gnome-shell-extension-manager
```

```
sudo apt-get install git autokey-gtk
cd ~/Downloads
rm -rf ./gnome-macorm -rf ./gnome-macos-remap
git clone https://github.com/petrstepanov/gnome-macos-remap
cd gnome-macos-remap
chmod +x ./install.sh ./uninstall.sh
./install.sh
```

```
sudo apt install menulibre
sudo apt install indicator-multiload
sudo apt-get install nautilus-admin
sudo apt-get install libxdo-dev
sudo apt-get install winetricks
```

https://repo.herecura.eu/herecura/x86_64/

```
cp libffmpeg.so /usr/lib/x86_64-linux-gnu/opera
```

```
sudo cp ~/.config/monitors.xml /var/lib/gdm3/.config/
pulseaudio -k
timedatectl set-local-rtc 1 --adjust-system-clock
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

- https://unix.stackexchange.com/questions/43196/how-can-i-tell-grub-i-want-to-reboot-into-windows-before-i-reboot
- https://superuser.com/questions/1293042/bidirectional-clipboard-not-working-in-virtualbox
- https://askubuntu.com/questions/367396/what-does-the-startupwmclass-field-of-a-desktop-file-represent
- https://de.mathworks.com/matlabcentral/answers/1459474-sudo-install-not-opening-installer-matlab-2021b

```
sudo apt-get install matlab-support
```

```
sudo apt install --reinstall nvidia-driver-470 
sudo prime-select nvidia
```

