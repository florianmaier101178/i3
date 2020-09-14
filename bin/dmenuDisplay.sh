#!/bin/bash

laptop=eDP-1
rightBig=DP-1-2
leftBig=DP-1-1

displays="all\nbigs\nlaptop\nrightAndLaptop\nleftAndLaptop\nright\nleft"

displays_choice=$(echo -e "$displays" | dmenu -i -p "Monitor Setup:")

case "$displays_choice" in
    all) 
        xrandr --output $laptop --auto
        xrandr --output $rightBig --auto --primary --left-of $laptop
        xrandr --output $leftBig --auto --left-of $rightBig
        ;;
    bigs)
        xrandr --output $laptop --off
        xrandr --output $rightBig --auto --primary
        xrandr --output $leftBig --auto --left-of $rightBig
        ;;
    laptop)
        xrandr --output $laptop --auto --primary
        xrandr --output $rightBig --off
        xrandr --output $leftBig --off
        ;;
    rightAndLaptop)
        xrandr --output $laptop --auto
        xrandr --output $rightBig --auto --primary --left-of $laptop
        xrandr --output $leftBig --off
        ;;
    leftAndLaptop)
        xrandr --output $laptop --auto
        xrandr --output $rightBig --off
        xrandr --output $leftBig --auto --primary --left-of $laptop
        ;;
    right)
        xrandr --output $laptop --off
        xrandr --output $rightBig --auto --primary
        xrandr --output $leftBig --off
        ;;
    left)
        xrandr --output $laptop --off
        xrandr --output $rightBig --off
        xrandr --output $leftBig --auto --primary
        ;;
esac

