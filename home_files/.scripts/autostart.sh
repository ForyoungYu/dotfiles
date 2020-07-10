#!/bin/bash

# dwm bar status
/bin/bash ~/.scripts/dwm-status.sh &

# wallpapers
/bin/bash ~/.scripts/wallpaper.sh &

picom -b
#redshift &
xfce4-power-manager &
xfce4-volumed-pulse &

# fcitx
/bin/bash ~/.scripts/autostart_wait.sh &
	
	
