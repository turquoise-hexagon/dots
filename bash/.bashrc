# exit if not interactive
[[ $PS1 ]] || return

# ---
# sources
# ---

for file in ~/.sh/*; do
    . "$file"
done

# ---
# settings
# ---

HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups
PROMPT_COMMAND=prompt

# ---
# misc
# ---

[[ -f /etc/bash_completion ]] &&
    . /etc/bash_completion
