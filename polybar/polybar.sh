██▓███   ▒█████   ██▓    ▓██   ██▓ ▄▄▄▄    ▄▄▄       ██▀███  
         ▓██░  ██▒▒██▒  ██▒▓██▒     ▒██  ██▒▓█████▄ ▒████▄    ▓██ ▒ ██▒
         ▓██░ ██▓▒▒██░  ██▒▒██░      ▒██ ██░▒██▒ ▄██▒██  ▀█▄  ▓██ ░▄█ ▒
         ▒██▄█▓▒ ▒▒██   ██░▒██░      ░ ▐██▓░▒██░█▀  ░██▄▄▄▄██ ▒██▀▀█▄  
         ▒██▒ ░  ░░ ████▓▒░░██████▒  ░ ██▒▓░░▓█  ▀█▓ ▓█   ▓██▒░██▓ ▒██▒
         ▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▒░▓  ░   ██▒▒▒ ░▒▓███▀▒ ▒▒   ▓▒█░░ ▒▓ ░▒▓░
         ░▒ ░       ░ ▒ ▒░ ░ ░ ▒  ░ ▓██ ░▒░ ▒░▒   ░   ▒   ▒▒ ░  ░▒ ░ ▒░
         ░░       ░ ░ ░ ▒    ░ ░    ▒ ▒ ░░   ░    ░   ░   ▒     ░░   ░ 
                      ░ ░      ░  ░ ░ ░      ░            ░  ░   ░     
                                    ░ ░           ░                    frost


################################################################################
                                                                        # COLORS
                                                                        ########
[colors]
bg = ${xrdb:color8:#}
fg = ${xrdb:color15:#}

active = #
inactive  = #

black1= ${xrdb:color0:#}
black2 = ${xrdb:color8:#}
red1 = ${xrdb:color1:#}
red2 = ${xrdb:color9:#}
green1 = ${xrdb:color2:#}
green2 = ${xrdb:color10:#}
yellow1 = ${xrdb:color3:#}
yellow2 = ${xrdb:color11:#}
blue1 = ${xrdb:color4:#}
blue2 = ${xrdb:color12:#}
magenta1 = ${xrdb:color5:#}
magenta2 = ${xrdb:color13:#}
cyan1 = ${xrdb:color6:#}
cyan2 = ${xrdb:color14:#}
white1 = ${xrdb:color7:#}
white2 = ${xrdb:color15:#}
################################################################################
                                                                        # TOPBAR
                                                                        ########
[bar/topbar]
monitor = eDP1
width = 100%
height = 18
fixed-center = true
scroll-up = i3wm-wsnext
scroll-down = i3wm-wsprev

background = ${colors.bg}

border-top-size = 5
border-right-size = 5
border-left-size = 5
border-bottom-size = 4
border-color = ${colors.black2}

line-size = 2

font-0 = PowerlineSymbols:size=15;4
#font-1 = nu:pixelsize=9:antialias=false;1
#font-1 = bitocra7:pixelsize=6:antialias=false;2
#font-1 = Scientifica:pixelsize=7:antialias=false;2
font-1 = cherry:pixelsize=7:antialias=false;2
#font-1 = "SanFranciscoDisplay-Regular:pixelsize=12:antialias=true;2"
#font-1 = cure:pixelsize=9:antialias=true;2
#font-1 = Misc TamzenForPowerline:pixelsize=8:antialias=false;2
#font-1 = terminus:pixelsize=9:antialias=false;2
font-3 = unifont:fontformat=truetype:size=8:antialias=true;0 ;BARS
#font-5 = FontAwesome:pixelsize=11:antialias=true;2
font-2 = TerminessTTF Nerd Font Mono:pixelsize=16:antialias=true;4
font-4 = "Noto Sans CJK JP:size=7:antialias=false;2"
font-5 = Wuncon Siji:pixelsize=8:antialias=false;2
#Powerline:     
#TerminessTTF:            

modules-left = i3 mpdbutton
modules-center = mpdtrack
modules-right = vpn bt audio xbacklight battery date
################################################################################
                                                                        # MPDBAR
                                                                        ########
[bar/mpdbar]
monitor = eDP1
width = 100%
height = 1
background = #
modules-left = mpdbar
################################################################################
                                                                     # MPDBUTTON
                                                                     ###########
[module/mpdbutton]
type = internal/mpd
host = 127.0.0.1
port = 6600

format-online =        
format-playing = ${self.format-online}
format-paused = ${self.format-online}
format-stopped = ${self.format-online}

icon-play = 
icon-pause = 
icon-stop = 
icon-prev = 
icon-next = 
icon-seekb = 
icon-seekf = 
icon-random = 
icon-repeat = 

format-online-prefix = %{B# F#}%{B- F-}
format-playing-prefix = %{B# F#}%{B- F-}
format-paused-prefix = %{B# F#}%{B- F-}
format-stopped-prefix = %{B# F#}%{B- F-}
format-online-suffix = %{B# F#}%{B- F-}
format-playing-suffix = %{B# F#}%{B- F-}
format-paused-suffix = %{B# F#}%{B- F-}
format-stopped-suffix = %{B# F#}%{B- F-}
format-online-foreground = ${colors.fg}
format-online-background = ${colors.active}
toggle-on-foreground = ${colors.fg}
toggle-off-foreground = #55
################################################################################
                                                                      # MPDTRACK
                                                                      ##########
[module/mpdtrack]
type = internal/mpd
host = 127.0.0.1
port = 6600
interval = 1

format-online =  
format-playing = ${self.format-online}
format-paused = ${self.format-online}
format-stopped = ${self.format-online}
label-time = "[%elapsed% / %total%] "
label-song = " %artist% - %title%"

format-online-prefix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-playing-prefix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-paused-prefix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-stopped-prefix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-online-suffix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-playing-suffix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-paused-suffix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-stopped-suffix = %{B# F#}%{B- F-}%{B# F#}%{B- F-}%{B# F#}%{B- F-}
format-online-foreground = ${colors.fg}
format-online-background = ${colors.active}
################################################################################
                                                                        # MPDBAR
                                                                        ########
[module/mpdbar]
type = internal/mpd
host = 127.0.0.1
port = 6600
interval = 1

format-online = 
format-playing = ${self.format-online}
format-paused = ${self.format-online}
format-stopped = ${self.format-online}

bar-progress-width = 320
bar-progress-indicator = %{B# F#}.%{B- F-}
bar-progress-fill = %{B# F#}.%{B- F-}
bar-progress-empty = %{B# F#}.%{B- F-}

#bar-progress-width = 100
#bar-progress-indicator = |
#bar-progress-fill = ─
#bar-progress-empty = ─
################################################################################
                                                                          # PLAY
                                                                          ######
[module/play]
type = custom/text
content = something
content-background = ${colors.bg}
content-foreground = ${colors.fg}
click-left = exec playerctl --all-players previous &
click-middle = exec playerctl --all-players play-pause &
click-right = exec playerctl --all-players next &
################################################################################
                                                                       # SPOTIFY
                                                                       #########
[module/spotify]
type = custom/script
exec = python ~/.config/polybar/pyspotify.py
interval = 1
label-foreground = ${colors.fg}
label-background = ${colors.bg}
click-left = playerctl previous
click-right = playerctl next
click-middle = playerctl play-pause
################################################################################
                                                                           # VPN
                                                                           #####
[module/vpn]
type = custom/script
exec = ~/.config/polybar/vpn
interval = 5
format-prefix = %{B# F#}%{B- F-}
format-suffix = %{B# F#}%{B- F-}
label-foreground = ${colors.fg}
label-background = ${colors.cyan1}
click-middle = exec /opt/mullvad-vpn/mullvad-vpn &
################################################################################
                                                                     # BACKLIGHT
                                                                     ###########
[module/xbacklight]
type = internal/xbacklight
format = 
label = %{A3:exec ~/.config/polybar/killred:}%{A1:exec ~/.config/polybar/red:}%percentage:2%%%{A}%{A}
format-prefix = %{B# F#}%{B- F-}
format-suffix = %{B# F#}%{B- F-}
label-foreground = ${colors.fg}
label-background = ${colors.yellow1}

################################################################################
                                                                     # BLUETOOTH
                                                                     ###########
[module/bt]
type = custom/script
exec = ~/.config/polybar/bt.sh
format-prefix = %{B# F#}%{B- F-}
format-suffix = %{B# F#}%{B- F-}
label-foreground = ${colors.fg}
label-background = ${colors.magenta1}
click-left = exec bluetoothctl power on &
click-right = exec bluetoothctl power off &
click-middle = exec blueman-manager &
################################################################################
                                                                          # WLAN
                                                                          ######
[module/wlan]
type = internal/network
interface = wlp4s0
interval = 1.0
udspeed-minwidth = 3

format-connected = 
format-disconnected = 
label-connected = %downspeed% %upspeed%
label-disconnected =  disconnected 
format-connected-prefix = %{B# F#}%{B- F-}
format-connected-suffix = %{B# F#}%{B- F-}
format-disconnected-prefix = %{B# F#}%{B- F-}
format-disconnected-suffix = %{B# F#}%{B- F-}
label-connected-foreground = ${colors.fg}
label-connected-background = #
label-disconnected-foreground = ${colors.fg}
label-disconnected-background = #
################################################################################
                                                                          # DATE
                                                                          ######
[module/date]
type = internal/date
interval = 1
label = %date%%time%
time = %H:%M
time-alt = %H:%M:%S
date-alt = "%a %d.%m.%Y "
format-prefix = %{B# F#}%{B- F-}
format-suffix = %{B# F#}%{B- F-}
label-foreground = ${colors.fg}
label-background = ${colors.red1}
################################################################################
                                                                         # AUDIO
                                                                         #######
[module/audio]
type = internal/pulseaudio
sink = alsa_output.pci-0000_00_1f.3.analog-stereo
format-volume = %{A2:pavucontrol:}%{A}
label-volume = %percentage:2%%
label-muted = OFF
format-volume-prefix = %{B# F#}%{B- F-}
format-volume-suffix = %{B# F#}%{B- F-}
format-muted-prefix = %{B# F#}%{B- F-}
format-muted-suffix = %{B# F#}%{B- F-}
label-volume-foreground = ${colors.fg}
label-volume-background = ${colors.blue1}
label-muted-foreground = ${colors.fg}
label-muted-background = ${colors.blue1}
################################################################################
                                                                       # BATTERY
                                                                       #########
[module/battery]
type = internal/battery
battery = BAT0
adapter = AC
full-at = 98

format-full = 
format-full-prefix = %{B# F#}%{B- F-}
format-full-suffix = %{B# F#}%{B- F-}
format-full-foreground = ${colors.fg}
format-full-background = ${colors.green1}

format-charging =  
format-charging-prefix = %{B# F#}%{B- F-}
format-charging-suffix = %{B# F#}%{B- F-}
format-charging-foreground = ${colors.fg}
format-charging-background = ${colors.green1}

format-discharging =  
format-discharging-prefix = %{B# F#}%{B- F-}
format-discharging-suffix = %{B# F#}%{B- F-}
format-discharging-foreground = ${colors.fg}
format-discharging-background = ${colors.green1}
################################################################################
                                                                          # TEMP
                                                                          ######
[module/temp]
type = internal/temperature
thermal-zone = 0
;units = false
format = 
label = %temperature-c%
label-foreground = ${colors.fg}
label-background = ${colors.bg}
################################################################################
                                                                          # EWMH
                                                                          ######
[module/ewmh]
type = internal/xworkspaces
icon-0 = net; web
icon-1 = tube; tube
icon-2 = media; music
icon-3 = mail; mail
icon-4 = file; file
icon-5 = work; work
icon-6 = game; game

;icon-0 = web;  web 
;icon-1 = tube;  tube 
;icon-2 = media;  media 
;icon-3 = mail;  mail 
;icon-4 = file;  file 
;icon-5 = work;  work 
;icon-6 = game;  game 

format = 
label-active = %icon%
label-active-underline = ${colors.ul}
label-active-background = ${colors.border}
label-active-foreground = ${colors.fg}
label-empty = %icon%
label-empty-underline = ${colors.ul}
label-empty-background = ${colors.bg2}
label-empty-foreground = ${colors.fg}
;label-active-margin-right = 1
label-active-padding = 1
label-empty-padding = 1
;label-empty-margin-right = 1
################################################################################
                                                                          # EWMH
                                                                          ######
[module/i3]
type = internal/i3
pin-workspaces = true
index-sort = true
enable-click = true
enable-scroll = true
wrapping-scroll = true
reverse-scroll = true
#一 二 三 四 五 六 七 八 九 十

ws-icon-0 = 1;一
ws-icon-1 = 2;二
ws-icon-2 = 3;三
ws-icon-3 = 4;四
ws-icon-4 = 5;五
ws-icon-5 = 6;六
ws-icon-6 = 7;七
ws-icon-7 = 8;八

format = 

label-focused = %{B# F#}%{B- F-}%{B# F#}%icon%%{B- F-}%{B# F#}%{B- F-}
#label-focused-underline = ${colors.red}
#label-focused-background = ${colors.active}
#label-focused-foreground = ${colors.fg}

label-occupied = %icon%
#label-occupied-underline = ${colors.ul}
label-occupied-background = ${colors.bg}
label-occupied-foreground = ${colors.fg}

label-empty = %icon%
#label-empty-underline = ${colors.ul}
label-empty-background = ${colors.bg}
label-empty-foreground = ${colors.fg}

label-urgent = %{B# F#}%{B- F-}%{B# F#}%{o# +o}%icon%%{-o}%{B- F-}%{B# F#}%{B- F-}
#label-urgent-underline = ${colors.fg}
label-urgent-background = ${colors.bg}
label-urgent-foreground = ${colors.fg}

label-unfocused = %{B# F#}%{B- F-}%{B# F#}%icon%%{B- F-}%{B# F#}%{B- F-}
#label-unfocused-underline = ${colors.ul}
label-unfocused-background = ${colors.bg}
label-unfocused-foreground = ${colors.fg}
#label-focused-padding = 1
#label-unfocused-padding = 1
#label-occupied-padding = 1
#label-urgent-padding = 1
#format-padding-left = 1
--------------------------------------------------------------------------------

[settings]
screenchange-reload = true
;compositing-background = source

[global/wm]
;margin-bottom = 10
;margin-top = 40
