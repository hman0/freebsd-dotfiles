# theming configuration
export XCURSOR_THEME="Bibata-Modern-Ice"
export XCURSOR_SIZE=24
xsetroot -cursor_name left_ptr &
xrdb ~/.Xresources

# display configuration
xset s off &
xset -dpms &
xset s noblank &

# keyboard configuration
xset r rate 200 50 &
setxkbmap gb &

# monitor configuration
xrandr --output DP-0 --mode 3440x1440 --rate 165

# notification daemon
dunst &

# compositor
picom &

# hide cursor after inactivity
unclutter -idle 1 &

# load wallpaper
feh --bg-fill ~/Pictures/Wallpapers/brown-chalet.jpg &

exec bspwm
