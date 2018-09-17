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
setxkbmap -option caps:escape
xset s off -dpms

# ---
# rice
# ---

xset +fp ~/.local/share/fonts
xrdb ~/.Xresources
~/.fehbg

# ---
# window manager
# ---

exec bspwm > .bspwm.log 2>&1
