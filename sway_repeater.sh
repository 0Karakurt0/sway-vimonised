#! /bin/sh
command=$(swaymsg -t subscribe '["binding"]' | jq -r '.binding.command'); # getting a command to repeat
times=$1
until [ $times -lt 2 ]; do
    sleep 0.1 # idk why, but my sway needed that
    swaymsg "$command"
    times=$(echo "$times - 1" | bc)
done
