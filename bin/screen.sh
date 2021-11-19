#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

value=$(xrandr | grep HDMI-1-1 | sed 's/HDMI-1-1 //' | sed 's/ (.*//' | sed 's/ .*//' )

xrandr | grep connected

if [ $value = "connected" ]
then 
  # two screeen
  echo -e "\n${grayColour}[!] Active primary"
  echo -e "[!] HDMI-1-1 connected\n${endColour}"
  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1-2 --off
elif [ $value = "disconnected" ]
then 
  echo -e "\n${grayColour}[!] Active primary"
  echo -e "[!] HDMI-1-1 disconnected\n${grayColour}"
  xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --off --output eDP-1-2 --off
fi
