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
xset +fp "${HOME}/.fonts"
xset fp rehash

# theming
hsetroot -fill "${HOME}/.wall.jpeg"
xrdb "${HOME}/.Xresources"

exec bspwm
