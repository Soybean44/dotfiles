#!/usr/bin/env bash
SCRIPTS=~/dotfiles/scripts/rofi

SCRIPT=$(ls $SCRIPTS | rofi -dmenu)

$SCRIPTS/$SCRIPT
