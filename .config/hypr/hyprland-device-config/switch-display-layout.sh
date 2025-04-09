#!/bin/bash
notify-send "Switching monitor layout..."
sleep 2
rm ~/dotfiles/.config/hypr/display.conf
ln -sf ~/dotfiles/.config/hypr/hyprland-device-config/display-configs/display.conf ~/dotfiles/.config/hypr/display.conf 
touch ~/dotfiles/.config/hypr/hyprland.conf
nmcli networking on
nmcli radio wifi on
