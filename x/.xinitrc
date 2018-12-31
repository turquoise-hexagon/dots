#!/bin/sh
#
# xinitrc

# ---
# daemons
# ---

start-pulseaudio-x11
urxvtd -q -o -f
sxhkd -m1 &
dunst &
mpd &

# ---
# settings
# ---

xsetroot -cursor_name left_ptr
setxkbmap fr -option caps:escape
xset s off -dpms

# ---
# rice
# ---

xrdb ~/.Xresources
xset +fp ~/.fonts
~/.fehbg

# ---
# window manager
# ---

exec bspwm
