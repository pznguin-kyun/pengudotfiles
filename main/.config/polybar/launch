#!/usr/bin/env bash

sleep 0.1
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    export MONITOR=$m 
    polybar -q main -c "$HOME"/.config/polybar/polybar.ini &
  done
else
  polybar -q main -c "$HOME"/.config/polybar/polybar.ini &
fi
