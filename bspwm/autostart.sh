#!/bin/sh

picom -f &
feh --bg-fill /usr/share/backgrounds/parrot-fly-grey.jpg &
xrandr --setprovideroutputsource 1 0
#chmod a+rw /sys/class/backlight/intel_backlight/brightness
#setxkbmap latam 
