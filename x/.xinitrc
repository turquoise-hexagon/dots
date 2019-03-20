#!/bin/sh
#
# xinitrc

# ---
# daemons
# ---

start-pulseaudio-x11
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

xset +fp ~/.local/share/fonts
xrdb ~/.Xresources
setroot --restore

# ---
# window manager
# ---

exec bspwm
