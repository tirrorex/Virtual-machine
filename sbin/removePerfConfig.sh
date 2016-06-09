#!/bin/bash
if [[ $(virsh list | grep win10Perf) == "" ]]
then
  vm=win10Perf
fi

xrandr --output HDMI2 --mode "3440x1440" --rate 60 --left-of HDMI1
xrandr --output HDMI2 --primary

#cset set -d system

cpupower -c 1-7 frequency-set -g powersave

killall synergy
killall synergyc
