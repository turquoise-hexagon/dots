#!/bin/sh
#
# xinitrc

# start daemons
pulseaudio --start
urxvtd -q -o -f
sxhkd -m 1 &
dunst &

# xset settings
xset r rate 200 40
xset s off -dpms

# keyboard settings
setxkbmap -option caps:escape

# fix cursor issue
xsetroot -cursor_name left_ptr

# enable fonts
xset +fp ~/.local/share/fonts

# merge xresources
xrdb ~/.Xresources

# restore wallpaper
~/.fehbg

exec bspwm
