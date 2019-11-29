#!/bin/bash

# Defaults for Manjaro KDE
GTK2_DATADIR=/usr/share/themes/
GTK3_HOME_CONFDIR="$HOME/.config/gtk-3.0"
GTK3_DATADIR=/usr/share/themes/

# Files used by kde-gtk-config
GTK2_THEME_RC="$HOME/.gtkrc-2.0"
GTK3_THEME_RC="$HOME/.config/gtk-3.0/settings.ini"

# Create "gtkrc-2.0" file if it doesn't exist
if [ ! -e "$GTK2_THEME_RC" ]; then
  # Breath
  if [ -e "$GTK2_DATADIR/Breath/gtk-2.0/gtkrc" ] ; then
    THEME="Breath"
  # else use Adwaita engine
  elif [ -e "$GTK2_DATADIR/Adwaita/gtk-2.0/gtkrc" ] ; then
    THEME="Adwaita"
  fi
  if [ -n "$THEME" ]; then
    cp -f /usr/share/kde-gtk-config/gtkrc-2.0.template "$GTK2_THEME_RC"
    sed -i -e "s,@@THEME_NAME@@,$THEME," "$GTK2_THEME_RC"
  fi
fi

# GTK3
# Create "settings.ini" file if it doesn't exist
if [ ! -e "$GTK3_THEME_RC" ]; then
  # Breath
  if [ -e "$GTK2_DATADIR/Breath/gtk-3.0/gtk.css" ] ; then
    THEME="Breath"
  # else use Adwaita
  elif [ -e "$GTK2_DATADIR/Adwaita/gtk-3.0/gtk.css" ] ; then
    THEME="Adwaita"
  fi
  if [ -n "$THEME" ]; then
    mkdir -p "$GTK3_HOME_CONFDIR"
    cp -f /usr/share/kde-gtk-config/gtk3-settings.ini.template "$GTK3_THEME_RC"
    sed -i -e "s,@@THEME_NAME@@,$THEME," "$GTK3_THEME_RC"
  fi
fi
 
