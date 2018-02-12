#!/bin/sh

# daemons
pulseaudio --start
urxvtd -q -f -o
dunst &

# settings
xset s off -dpms -b
setxkbmap -option caps:escape
xsetroot -cursor_name left_ptr

# fonts
xset +fp "${HOME}/.fonts"
xset fp rehash

# theming
"${HOME}/.fehbg" &
xrdb "${HOME}/.Xresources"

exec bspwm
