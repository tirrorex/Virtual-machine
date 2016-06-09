#!/bin/bash

virsh attach-device win10Perf /home/zipeldiablo/mouse.xml
virsh attach-device win10Perf /home/zipeldiablo/keyboard.xml
/home/zipeldiablo/sbin/synergyStart
