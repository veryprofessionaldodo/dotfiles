# dotfiles
Storage of my Dotfiles for a Manjaro i3, here's an example of how it looks.

![screenshot](https://user-images.githubusercontent.com/22790704/71752524-4b727680-2e77-11ea-8a22-2ae6e2616949.png)

Note: This was custom made for my own Manjaro (and now Arch) setup, but I have a lot of scripts that can help you bootstrap your own config. 

The most helpful scripts for you are probably update.sh and \*FreshSetup.sh scripts. The "update" script takes all the important files in the configuration folders, and shoves them where they belong. This includes configuration files for a lot of different things, so please read the script and modify it how much you want :)  The "freshSetup" is to setup fonts, install programs, as well as using update, both for Manjaro and Arch. Again, I reiterate, this was done to automate work on *my* setup, so you may have to tinker with it a bit.

I've tried to make things path-agnostic, so wherever you place this folder is where the setup is configured. Just an important thing to keep in mind, I setup a new environment variable called $DOTFILES_DIR that is referenced liberally throughout the scripts. This variable is set on the FreshSetup script automagically, so there's no need for you to input any information. 

Just keep this in mind, because if you change the location of the dotfiles folder, things *WILL* break. Not catastrophically mind you, but custom configuration keybindings will not be run because the $DOTFILES_DIR now points to the wrong place. 

I also differentiate between my laptop and desktop, because I have some shortcuts that vary from the two devices, as well as different polybar configurations. If you want to make absolutely sure that nothing will break, please read what the update script does :)

## Features
- Automatic random change of wallpaper on boot (Wallpapers are the files stored on the "Wallpapers" folder);
- Automatic pywal generation on boot, taking into consideration the wallpaper chosen. Affects the color scheme of rofi, dunst, GTK (using wpgtk), Firefox, Spotify and polybar;
- A lot of scripts, some for Xrandr, volume control, brightness control, Spotify control, installing important programs, etc;

Credits: Many thanks for eh8 for the LightDM greeter, and adi1090x for the Polybar theme!

### Hope you like it! <3 
