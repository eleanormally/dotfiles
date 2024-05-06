#!/usr/bin/env zsh

ICON_PADDING_RIGHT=5

case $INFO in
"Calendar")
    ICON_PADDING_RIGHT=3
    ICON=
    ;;
"Discord")
    ICON=󰙯
    ;;
"iTerm2")
    ICON=
    ;;
"FaceTime")
    ICON_PADDING_RIGHT=5
    ICON=
    ;;
"Finder")
    ICON=
    ;;
"Marta")
    ICON=
    ;;
"Brave Browser")
    ICON_PADDING_RIGHT=7
    ICON=
    ;;
"IINA")
    ICON_PADDING_RIGHT=4
    ICON=󰕼
    ;;
"Messages")
    ICON=󰍦
    ;;
"Preview")
    ICON_PADDING_RIGHT=3
    ICON=
    ;;
"Cider")
    ICON=
    ;;
"Obsidian")
    ICON_PADDING_RIGHT=4
    ICON=
    ;;
*)
    ICON=﯂
    ;;
esac

sketchybar --set $NAME icon=$ICON icon.padding_right=$ICON_PADDING_RIGHT
sketchybar --set $NAME.name label="$INFO"
