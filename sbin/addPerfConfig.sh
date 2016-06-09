#!/bin/bash
if [[ $(virsh list | grep win10Perf) == "" ]]
then
  vm=win10Perf
fi

xrandr --output HDMI2 --off
xrandr --output HDMI1 --mode "1920x1200" --rate 60 --primary

#cset set -c 0,4 -s system
#cset proc -m -f root -t system
#cset proc -k -f root -t system

cpupower -c 0-7 frequency-set -g performance

synergyc 192.168.1.38:24800
