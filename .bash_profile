# Possibly figure out a better way to do this

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Color stuff
export LS_COLORS="di=34;1:ln=32;1:ex=31;1:*~=31;1:*.html=31;1:*.shtml=37;1"

# Config home
#export XDG_CONFIG_HOME=~/.config

# Path stuff
#export PATH="$PATH:/opt/nvim-linux64/bin"
#export PATH="$PATH:/opt/tmux/bin"

## Tmux logic to start when open: https://koenwoortman.com/tmux-sessions-should-be-nested-with-care-unset-tmux-to-force/
#session_name="sesh"
#
## 1. First you check if a tmux session exists with a given name.
#tmux has-session -t=$session_name 2> /dev/null
#
## 2. Create the session if it doesn't exists.
#if [[ $? -ne 0 ]]; then
#    TMUX='' tmux new-session -d -s "$session_name"
#fi
#
## 3. Attach if outside of tmux, switch if you're in tmux.
#if [[ -z "$TMUX" ]]; then
#    tmux attach -t "$session_name"
#else
#    tmux switch-client -t "$session_name"
#fi
#. "$HOME/.cargo/env"
