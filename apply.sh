#!/bin/bash
cd ~/dotfiles

git submodule init
git submodule update

stow --adopt .
git reset --hard

sudo systemctl enable onedrive@LightJack05.service
sudo systemctl enable vmware-networks
sudo systemctl enable vmware-usbarbitrator
sudo systemctl enable libvirtd.service
sudo systemctl enable gdm
sudo systemctl enable avahi-daemon
sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service

sudo systemctl start vmware-networks
sudo systemctl start vmware-usbarbitrator
sudo systemctl start libvirtd.service
sudo systemctl start avahi-daemon
sudo systemctl start bluetooth.service
sudo systemctl start cups.service

sudo cp -rv ./root/* /
