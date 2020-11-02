#!/bin/bash
string=$1
length=${#string}
number=${string:0:$(($length -1))}
direction=${string:(-1)}
case $direction in
    h) swaymsg resize shrink width $number ;;
    j) swaymsg resize shrink height $number ;;
    k) swaymsg resize grow height $number ;;
    l) swaymsg resize grow width $number ;;
esac
# TODO
# Make it sh
