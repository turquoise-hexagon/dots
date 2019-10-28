# exit if not interactive
[[ $- =~ i ]] || return

# source bash modules
for _ in ~/.config/shell/*; do
    . "$_"
done
