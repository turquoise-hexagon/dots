# exit if not interactive
[[ $- =~ i ]] || return

# source bash modules
for _ in ~/.config/bash/*; do
    . "$_"
done
