#!/bin/bash

cpu=$(cat /sys/class/thermal/thermal_zone0/temp)

echo "$(date) @ $(hostname)"
echo "------------------------------"
echo "$(uptime -p) (since $(uptime -s))"
echo "------------------------------"
echo "Temperature"
echo "CPU => $((cpu/1000))ºC"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')ºC"
echo "------------------------------"
echo "Hard disk"
echo "$(df -H | head -2 | tail -1)"
echo "------------------------------"
echo "RAM"
echo "$(free -h -t)"