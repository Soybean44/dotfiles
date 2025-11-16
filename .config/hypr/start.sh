#!/usr/bin/zsh

waybar &
dunst &
hyprpaper &
evtest --grab /dev/input/event15 > /dev/null &
muezzin &
flameshot &
