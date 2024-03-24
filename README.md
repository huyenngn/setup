# My setup for Ubuntu

## Base
```
sudo apt update
sudo apt -y upgrade

sudo apt install -y \
	build-essential \
	ninja-build \
	wget \
	curl \
	git \
	vim
```

## Python 
```
sudo apt install -y python-is-python3 python3-pip python3-venv python3-dev
```

## Nodejs
```
sudo apt install -y nodejs npm
```

## Java
```
sudo apt install -y default-jdk
```

## Extensions
```
sudo apt install -y gnome-tweaks gnome-shell-extensions pipx

pip3 install --upgrade gnome-extensions-cli
pipx install gnome-extensions-cli --system-site-packages
gext install Move_Clock@rmy.pobox.com gestureImprovements@gestures
```

## Apps
```
sudo apt install -y indicator-multiload nautilus-admin
sudo snap install vlc spotify
```

## GRUB theme
```
sudo mkdir /boot/grub/themes/
sudo tar -xvf legion.tar -C /boot/grub/themes/
sudo sed 's/#GRUB_THEME.*//' /etc/default/grub
echo "GRUB_THEME=/boot/grub/themes/legion/theme.txt" | sudo tee -a /etc/default/grub

sudo update-grub
```

## Miscellaneous

### Reinstall Nvidia drivers
```
sudo apt install --reinstall nvidia-driver-470 
sudo prime-select nvidia
```

### Fix time
```
timedatectl set-local-rtc 1 --adjust-system-clock
```

### minimize to dock on click
```
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```

### Uninstall Firefox
```
sudo snap remove --purge firefox
```

### Install
  - [VSCode](https://code.visualstudio.com/download)
  - [Dropbox](https://www.dropbox.com/install-linux)
  - [Zoom](https://zoom.us/download?os=linux)
  - [RealVNC](https://www.realvnc.com/en/connect/download/viewer/)
  - [Gesture](https://github.com/harshadgavali/gnome-x11-gesture-daemon)
  - [Mac Keyboard](https://github.com/petrstepanov/gnome-macos-remap)

## Troubleshooting
- https://unix.stackexchange.com/questions/43196/how-can-i-tell-grub-i-want-to-reboot-into-windows-before-i-reboot
- https://superuser.com/questions/1293042/bidirectional-clipboard-not-working-in-virtualbox
- https://askubuntu.com/questions/367396/what-does-the-startupwmclass-field-of-a-desktop-file-represent
- https://de.mathworks.com/matlabcentral/answers/1459474-sudo-install-not-opening-installer-matlab-2021b
```
sudo apt-get install matlab-support
```

