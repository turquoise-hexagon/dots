#!/bin/sh
#
# xinitrc

# start daemons
pulseaudio --start
urxvtd -q -o -f
sxhkd -m1 &
dunst &

# settings
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xset s off -dpms

# rice
xset +fp ~/.local/share/fonts
xrdb ~/.Xresources
~/.fehbg

exec bspwm
