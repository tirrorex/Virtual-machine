#!/bin/bash
if [[ $(virsh list | grep win10) == "" ]]
then
  vm=win10
fi

xrandr --output HDMI2 --mode "3440x1440" --rate 60 --left-of HDMI1
xrandr --output HDMI2 --primary

#cset set -d system

cpupower -c 1-3 frequency-set -g powersave
cpupower -c 5-7 frequency-set -g powersave

killall synergy
killall synergyc
