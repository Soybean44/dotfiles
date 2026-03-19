#!/usr/bin/env bash
nitrogen --restore &
kanata --cfg=/home/soybean44/.config/kanata/keyboard.kbd &
blueman-applet &
xautolock -time 10 -locker slock &
xsettingsd &
dunst &
picom --backend egl -b &
nm-applet & 
wmname LG3D &
udiskie -a &
mpDris2 --music-dir /home/soybean44/Music/ & # yay -S mpdris2
flameshot &
