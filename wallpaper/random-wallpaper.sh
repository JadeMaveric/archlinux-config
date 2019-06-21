#!/bin/bash

wallpaper=($ls ~/.config/wallpaper/*.png)

numOfImages=${#wallpaper[@]}
randomNumber=$RANDOM
let "randomNumber %= numOfImages"

finalChoice=${wallpaper[$randomNumber]}

if [ "$1" != "" ]; then
    finalChoice=$1
fi

swaymsg "output \"*\" bg $finalChoice fill"

notify-send "Wallpaper changed" "$finalChoice"
