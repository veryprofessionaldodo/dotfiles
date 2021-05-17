# Setting up KDE

## After installing OS

Install yay, using this command:

cd Downloads && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

Grab these packages:

yay -S packagekit plasma

yay -S kde-applications

(If you have another Desktop Environment, you may need to activate [SDDM](https://wiki.archlinux.org/title/SDDM))

## Customizing Functionality

In order for Dolphin to select using double-click instead of single-click, go to System Settings > Workspace Behaviour > General Behaviour, and select "Selects Them" on the "Clicking Files or Folders" option.

Regardwing workspaces, search in the System Settings for "Virtual Desktops", and create the amount of Desktops that you like. Name them "Desktop 2", "Desktop 3" and so on. Change the animation to Fade, on the "Show Animation when Switching" option below.

Regarding workspaces shortcuts, search for shortcuts, and the search for desktop. To switch desktop, the command is "Switch Desktop", set it to what you want. To send a window to a desktop, the command is "Window to Desktop".

## Customizing Appearance

Go to System Settings > Appearance > Global Theme, and click on "Get New Global Themes". Install the Layan Theme (you can search by clicking on the three dots).

Go to Icons, and install the Tela Icon pack by getting it from the install new Icon.

Download the [Layan Kvantum Theme](https://www.pling.com/p/1325246/), available under Sources.

To change the Kvantum Theme, go to the Kvantum Manager, and Install the theme from the folder. Next, change the active theme to "Layan".

For the GTK Theme, go to System Settings > Appearance > Application Style > Configure Gnome/GTK Style > Get New Gnome Application Style, and search for "Layan". Install that and apply.

To enable Blur, search for Blur on the System Settings

## Customizing Tiling

Go to System Settings > KWin Scripts, and install Krohnkite from the "Get New Scripts". To customize Krohnkite, run

mkdir -p ~/.local/share/kservice5 && ln -s ~/.local/share/kwin/scripts/krohnkite/metadata.desktop ~/.local/share/kservice5/krohnkite.desktop

## Fixing VSCode Deletion

Create the file to store the variable: 

mkdir -p ~/.config/plasma-workspace/env && touch ~/.config/plasma-workspace/env/electron-trash-gio.sh

Edit the file: nano ~/.config/plasma-workspace/env/electron-trash-gio.sh

Put this line: export ELECTRON_TRASH=gio

Log out or reboot to apply the fix.