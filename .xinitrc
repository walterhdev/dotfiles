#! /bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

ibus-daemon -drx

# Xbindkeys
nohup xbindkeys &

# Track point
# xinput set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" -0.25

# xrandr -s 1920x1080
xrandr --dpi 140 
exec i3
