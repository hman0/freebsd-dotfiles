#pulseaudio --start &
dunst &
dwmblocks &
feh --bg-scale ~/Pictures/Wallpapers/sagecore.jpg &
picom &

xrandr --output DP-2 --pos 0x0 --output DP-0 --pos -750x1080
xset s off
xset -dpms
xset s noblank

exec dbus-launch --sh-syntax --exit-with-session dwm
