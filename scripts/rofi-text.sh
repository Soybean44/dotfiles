#!/bin/zsh
export TEXTBOOK_DIR=~/Documents/Textbooks

/bin/ls $TEXTBOOK_DIR | grep -v "\.md" |rofi -dmenu -theme "$HOME"/.config/rofi/config/launcher.rasi | xargs -I {} zathura "$TEXTBOOK_DIR/{}"
	
