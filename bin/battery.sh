#!/bin/bash

# If this script doesn't work look at the output of upower -e and upower -d

br=$(upower -d /org/freedesktop/UPower/devices/battery_BAT0 |
    grep percentage |sed 's/ *percentage: *//g' | head -n 1 | sed 's/%//' )
#echo "--$br--"

state=$(upower -d /org/freedesktop/UPower/devices/battery_BAT0 |
    grep state | sed 's/ *state: *//' | head -n 1 ) 
#echo "--$state--"

if [ $br -le 10 ]; then 
    icon= 
elif [ $br -le 20 ]; then
    icon=  
elif [ $br -le 35 ]; then
    icon=  
elif [ $br -le 40 ]; then
    icon=  
elif [ $br -le 50 ]; then
    icon=
elif [ $br -le 60 ]; then
    icon=  
elif [ $br -le 70 ]; then
    icon=
elif [ $br -le 80 ]; then
    icon=
elif [ $br -le 90 ]; then
    icon=
else
    icon=
fi

if [ $state == "charging" -o $state == "fully-charged" ]; then
    echo -n ""
else 
    echo -n "$icon"
fi
echo -n " $br%"
