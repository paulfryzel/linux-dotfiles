#/usr/bin/env bash

ut=$(date +\(%a\)\ %Y.%m.%d\ %R)
bp=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E 'percentage' | cut -d ':' -f 2)
echo 'BAT' $bp '|' $ut
