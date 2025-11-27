#!/usr/bin/zsh

waybar &
dunst &
hyprpaper &
evtest --grab /dev/input/event15 > /dev/null &
muezzin &
flameshot &
kanata --cfg=/home/soybean44/.config/kanata/keyboard.kbd &
swayidle -w timeout 300 'waylock' &
