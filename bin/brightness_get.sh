#!/bin/bash

(( br = $(brightnessctl get) * 100 / 26666 ))
#echo $br

if [ $br -le 25 ]; then 
    icon= 
elif [ $br -le 50 ]; then
    icon=  
elif [ $br -le 75 ]; then
    icon=   
else
    icon=
fi

#echo $icon

echo "$icon $br%"
