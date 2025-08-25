#!/bin/bash

cp hyprland.conf ~/.config/hypr
cp kitty.conf ~/.config/kitty
cp waybar/waybar.jsonc ~/.config/waybar/config.jsonc
cp waybar/styles.css ~/.config/waybar

rm -rf $HOME/Imagens/wallpapers
cp -r wallpapers $HOME/Imagens/wallpapers