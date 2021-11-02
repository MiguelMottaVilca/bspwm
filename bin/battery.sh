#!/bin/bash

# If this script doesn't work look at the output of upower -e and upower -d

bat=`upower -d /org/freedesktop/UPower/devices/battery_BAT0 |
    grep percentage |sed 's/ *percentage: *//g'` | head -n 1

echo "--$bat--"

#bat1=`upower -d /org/freedesktop/UPower/devices/battery_BAT0 |
#    awk 'NR==33' 
    #| sed '/^\s*$\d'
#echo "--$bat1--"

#state=`upower -d /org/freedesktop/UPower/devices/battery_BAT0 |
#    grep state |
#    sed 's/ *state: *//'`

#if [ $state == "charging" -o $state == "fully-charged" ]; then
#    echo -n " "
#else
#    echo -n "$bat           "
#fi

#echo -n "$bat "


# awk 'NR==numero'
# find / -user bandit7 -group bandit6 -size 33c 2>/dev/null 
