# exit if not interactive
[[ $- =~ i ]] || return

# source bash modules
for file in ~/.config/shell/*; do
    . "$file"
done
