#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers/art"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
swww img $WALLPAPER --transition-type "fade" --transition-step 30
wal -i $WALLPAPER

# update configs with pywal generated
cat ~/.cache/wal/colors-kitty.conf >> ~/.config/kitty/kitty.conf
echo background_opacity 0.7 >> ~/.config/kitty/kitty.conf