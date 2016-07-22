export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFhl'

export PS1='💰  \[\e[0;94m\]\w\[\e[0m\]\[\e[0;93m\]$(__git_ps1 " (%s)")\[\e[0m\] '
export PROMPT_DIRTRIM=2

# Personal & Homebrew
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# rbenv
eval "$(rbenv init -)"

# pyenv
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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
alias reload="source ~/.bash_profile"

# alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias tower="gittower"
alias cart="carthage"
# alias s3="s3cmd"
# alias mm="middleman"
# alias swift="/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"

alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
