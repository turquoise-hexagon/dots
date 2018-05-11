#!/bin/sh
#
# xinitrc

# daemons
pulseaudio --start
urxvtd -q -o -f
sxhkd -m 1 &
dunst &

# settings
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xset s off -dpms -b

# theming
xrdb ~/.Xresources
xset +fp ~/.fonts
~/.fehbg

exec bspwm
