# exit if not interactive
[[ $- =~ i ]] || return

# source bash modules
for file in ~/.sh/*; do
    . "$file"
done
