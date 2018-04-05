#!/bin/sh
#
# xinitrc

# daemons
pulseaudio --start
urxvtd -q -o -f
dunst &

# settings
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xset s off -dpms -b

# theming
xrdb "$HOME/.Xresources"
xset +fp "$HOME/.fonts"
"$HOME/.fehbg"

exec bspwm
