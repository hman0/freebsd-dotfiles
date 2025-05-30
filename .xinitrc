# Startup applications
dunst &
dwmblocks &
feh --bg-fill ~/Pictures/Wallpapers/sagecore.jpg &
picom &

# Display configuration
xrandr --output DP-2 --pos 0x0 --output DP-0 --pos -750x1080
xset s off
xset -dpms
xset s noblank

# Keyboard configuration
xset r rate 200 50
setxkbmap gb

exec dbus-launch --sh-syntax --exit-with-session dwm
