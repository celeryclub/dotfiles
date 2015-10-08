export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFhl'

export PS1='💰  \[\e[0;94m\]\w\[\e[0m\]\[\e[0;93m\]$(__git_ps1 " (%s)")\[\e[0m\] '
export PROMPT_DIRTRIM=2

# Personal & Homebrew
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# rbenv
# export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

# Node
# export NODE_PATH="/usr/local/lib/node"
# export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
# export PATH="/usr/local/share/npm/bin:$PATH"

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# Aliases
alias violet="mpc -h violet.local"
alias orange="mpc -h orange.local"

alias s3="s3cmd"

alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
