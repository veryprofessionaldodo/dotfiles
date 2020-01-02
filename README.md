# dotfiles
Storage of my Dotfiles for a Manjaro i3, here's an example of how it looks.

![Screenshot](https://user-images.githubusercontent.com/22790704/47847979-c8faac80-ddc4-11e8-86ff-f2cfc284d2e4.png)

Note: This was custom made for my own Manjaro setup, but I have a lot of scripts that can help you bootstrap your own config. The script assumes that the default location for everything is $HOME/Documents, so if you place this repo there it shoud be fine (I hope:) ).

The most helpful scripts for you are probably update.sh and first-install.sh scripts. The "update" script takes all the important files in the configuration folders, and shoves them where they belong. This includes configuration files for a lot of different things, so please read the script and modify it how much you want :)  The "first-install" is to setup fonts, install programs, as well as using update. 

## Features
- Automatic random change of wallpaper on boot (Wallpapers are the files stored on the "Wallpapers" folder);
- Automatic pywal generation on boot, taking into consideration the wallpaper chosen. Affects the color scheme of rofi, dunst, GTK (using wpgtk), Firefox, Spotify and polybar;
- A lot of scripts, some for Xrandr, volume control, brightness control, Spotify control, installing important programs, etc;


### Hope you like it! <3 
