#!/bin/sh
while true; do
    if xinput list | grep -i "keyboard" > /dev/null; then
        setxkbmap gb
        xset r rate 200 50
    fi
    sleep 5
done &

