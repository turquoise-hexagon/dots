#!/bin/sh
#
# xinitrc

# start daemons
pulseaudio --start
urxvtd -q -o -f
sxhkd -m 1 &
dunst &

# settings
setxkbmap -option caps:escape
xsetroot -cursor_name left_ptr
xset s off -dpms

# rice
xset +fp ~/.local/share/fonts
xrdb ~/.Xresources
~/.fehbg

exec bspwm
