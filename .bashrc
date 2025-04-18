# Make bash append rather than overwrite the history on disk
shopt -s histappend

if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]`__git_ps1`\n\$ '

# Color stuff
LS_COLORS="di=34;1:ln=32;1:ex=31;1:*~=31;1:*.html=31;1:*.shtml=37;1:ow=01;33"
export LS_COLORS

# X11 forwarding
export DISPLAY=localhost:0.0

# source the users bash_aliases if it exists
if [ -f "${HOME}/.bash_aliases" ] ; then
  source "${HOME}/.bash_aliases"
fi

# source the users bash_functions if it exists
if [ -f "${HOME}/.bash_functions" ] ; then
  source "${HOME}/.bash_functions"
fi

# Start TMUX by default
# Tmux logic to start when open: https://koenwoortman.com/tmux-sessions-should-be-nested-with-care-unset-tmux-to-force/
session_name="sesh"

# 1. First you check if a tmux session exists with a given name.
tmux has-session -t=$session_name 2> /dev/null

# 2. Create the session if it doesn't exists.
if [[ $? -ne 0 ]]; then
    TMUX='' tmux new-session -d -s "$session_name"
fi

# 3. Attach if outside of tmux, switch if you're in tmux.
if [[ -z "$TMUX" ]]; then
    tmux attach -t "$session_name"
else
    tmux switch-client -t "$session_name"
fi
