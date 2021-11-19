#!/bin/bash

br=$(amixer get Master | grep Playback | awk 'NR==3' | sed 's/%\] \[on]*//' | sed 's/.* \[//'  )
#echo -n "--$br--"

if [ $br -eq 0 ]; then
    icon=ﱝ
elif [ $br -le 25 ]; then 
    icon= 
elif [ $br -le 50 ]; then
    icon=奔  
elif [ $br -le 75 ]; then
    icon=墳
else
    icon=
fi

echo -n "$icon $br%"
#amixer get Master | grep Mono
