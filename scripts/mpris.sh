#!/usr/bin/env bash

# Check if a player is active
if ! playerctl status >/dev/null 2>&1; then
    echo "No media playing :'C"
    exit 0
fi

# Get metadata (artist and title)
metadata=$(playerctl metadata --format '{{artist}} - {{title}}' 2>/dev/null)
status=$(playerctl status 2>/dev/null)

# Truncate metadata to avoid clutter (adjust as needed)
metadata=$(echo "$metadata" | cut -c 1-30)

# Set icon based on playback status
case "$status" in
    "Playing") icon=" 󰐊" ;;
    "Paused") icon=" 󰏤" ;;
    *) icon=" 󰓛" ;;
esac

# Output for dwmblocks
echo "$icon $metadata"

