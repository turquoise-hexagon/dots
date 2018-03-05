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

# fonts
xset +fp "$HOME/.fonts"
xset fp rehash

# theming
xrdb "$HOME/.Xresources"
"$HOME/.fehbg"

exec bspwm
