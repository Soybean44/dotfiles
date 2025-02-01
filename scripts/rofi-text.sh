#!/bin/zsh
export TEXTBOOK_DIR=~/Documents/Textbooks

/bin/ls $TEXTBOOK_DIR | rofi -dmenu | xargs -I {} zathura "$TEXTBOOK_DIR/{}"
