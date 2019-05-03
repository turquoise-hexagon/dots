#!/bin/sh
#
# xinitrc

# ---
# daemons
# ---

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
xrdb -merge ~/.Xresources
setroot --restore

# ---
# window manager
# ---

exec bspwm
