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

hsetroot -fill ~/.wall.jpg
xrdb ~/.Xresources
xset +fp ~/.fonts

# ---
# window manager
# ---

exec bspwm
