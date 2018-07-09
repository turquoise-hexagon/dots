#!/bin/sh
#
# xinitrc

# start daemons
pulseaudio --start
urxvtd -q -o -f
sxhkd -m 1 &
dunst &

# settings
xsetroot -cursor_name left_ptr
xset s off -dpms r rate 200 40
setxkbmap -option caps:escape

# rice
xset +fp ~/.local/share/fonts
xrdb ~/.Xresources
~/.fehbg

exec bspwm
