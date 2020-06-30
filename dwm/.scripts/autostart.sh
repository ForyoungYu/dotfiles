#!/bin/bash

/bin/bash ~/.scripts/dwm-status.sh &
/bin/bash ~/.scripts/wallpaper.sh &
picom -b
redshift &
xfce4-power-manager &
xfce4-volumed-pulse &
/bin/bash ~/.scripts/autostart_wait.sh &
	
	
