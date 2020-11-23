#!/bin/bash
[ -f $2 ] || touch $2
number=$(cat $2);
case $1 in
    [0-9]) echo "$number$1" > $2 ;;
    left) swaymsg resize shrink width $number;;
    up) swaymsg resize shrink height $number;;
    down) swaymsg resize grow height $number;;
    right) swaymsg resize grow width $number;;
    clear)  echo "0" > $2;;
    *) echo "Wrong input!";;
esac
# TODO
# Make it sh
