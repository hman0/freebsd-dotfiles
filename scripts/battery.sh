#!/bin/sh

# Path to battery (adjust BAT0 to your battery name, e.g., BAT1)
BAT="/sys/class/power_supply/BAT0"

# Check if battery exists
[ -d "$BAT" ] || { echo "No battery"; exit 1; }

# Get capacity and status
CAPACITY=$(cat "$BAT/capacity")
STATUS=$(cat "$BAT/status")

# Format output: e.g., "75%" or "75%+"
case "$STATUS" in
    "Charging") echo "$CAPACITY%+" ;;
    "Discharging") echo "$CAPACITY%" ;;
    "Full") echo "$CAPACITY%=" ;;
    *) echo "$CAPACITY%?" ;;
esac
