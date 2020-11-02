#! /bin/bash
case $1 in
    --start)
        until false; do
            swaymsg -t subscribe '["binding"]' | jq -r '.binding.command' | tee -a "$2"
        done ;;
    --clear) tail -n20 "$2" | >/dev/null tee "$2" ;
        killall swaylast_action.sh;;
    --get) cat $2 | tac | grep -v "sway-last_action" | head -n 1 ;;
esac
