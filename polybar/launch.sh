#!/bin/bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI1')
if [[ $my_laptop_external_monitor = *\ connected* ]]; then
    polybar mybar_external &
fi
