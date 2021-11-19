#!/bin/sh

ips=$(hostname -I | sed 's/ .*//')

echo -n "$ips"

#echo "%{F#2495e7} %{F#ffffff}$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}"
#echo $(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{print $2}')%{u-}
