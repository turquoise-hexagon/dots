#!/bin/sh
#
# xinitrc

# daemons
dunst &

# settings
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
setxkbmap fr
xset s off -dpms -b

# fonts
xset +fp "${HOME}/.fonts"
xset fp rehash

# theming
hsetroot -fill "${HOME}/.wall"
xrdb "${HOME}/.Xresources"

exec wm
