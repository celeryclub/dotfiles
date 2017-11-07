# echo '💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 '
# echo ' __    __     ______     __   __     ______     __  __    '
# echo '/\ "-./  \   /\  __ \   /\ "-.\ \   /\  ___\   /\ \_\ \   '
# echo '\ \ \-./\ \  \ \ \/\ \  \ \ \-.  \  \ \  __\   \ \____ \  '
# echo ' \ \_\ \ \_\  \ \_____\  \ \_\\"\_\  \ \_____\  \/\_____\ '
# echo '  \/_/  \/_/   \/_____/   \/_/ \/_/   \/_____/   \/_____/ '
# echo '💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 💰 '
# echo ''

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -aFGh'
alias ll='ls -aFGhl'

source ~/.git-prompt.sh

export PS1='💰  \[\e[0;94m\]\w\[\e[0m\]\[\e[0;93m\]$(__git_ps1 " (%s)")\[\e[0m\] '
# export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export PROMPT_DIRTRIM=2
# export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
# export PROMPT_COMMAND='💰  \[\e[0;94m\]\w\[\e[0m\]\[\e[0;93m\]$(__git_ps1 " (%s)")\[\e[0m\] '
# export PS1='[\u@\h \W$<pre>PROMPT_COMMAND<post> " (%s)")]\$ '

# export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'
# export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Personal & Homebrew
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Composer
export PATH=~/.composer/vendor/bin:$PATH

# Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# rbenv
eval "$(rbenv init -)"

# pyenv
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Bash completion
source $(brew --prefix)/etc/bash_completion
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
# . $(brew --prefix)/etc/bash_completion
# fi

# if [ -f /usr/local/share/bash-completion/bash_completion ]; then
#   . /usr/local/share/bash-completion/bash_completion
# fi

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

alias mysql_start="brew services start mysql"
alias mysql_stop="brew services stop mysql"

source ~/.private

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# Adobe

alias dc=docker-compose
alias dm=docker-machine
alias fl=flotilla
alias devenv="eval \"\$(docker-machine env dev)\""

alias hub=git

# docker-clean() { docker rm $(docker ps -a -q); docker rmi $(docker images | grep "^<none>" | awk '{print $3}'); }
# de() {
#   docker exec -it $1 /bin/bash
# }

# function dm {
#   if [[ "$1" = "up" ]]; then
#     docker-machine start dev
#   elif [[ "$1" = "down" ]]; then
#     docker-machine stop dev
#   else
#     docker-machine $*
#   fi
# }

# source docker-machine environment variables
if docker-machine ls | grep -q 'dev.*vmwarefusion.*Running'; then
  eval $(docker-machine env dev)
else
  echo "Docker-machine: Machine ""dev"" is stopped."
fi

function karma() {
  result=$(echo $1 | sed 's|/|\\/|g')

  env TEST_FILTER=$result npm run karma:dev
}

# function karma-dev() {
#   result=$(echo $1 | sed 's|/|\\/|g')

#   env TEST_FILTER=$result npm run karma:dev
# }

alias php-sniff="git diff upstream/master --name-only  --pretty=format: --diff-filter=AM | grep '.php$' | xargs ./vendor/bin/phpcs --standard=./vendor/behance/php-sniffs/Behance/"
alias php-fix="git diff upstream/master --name-only  --pretty=format: --diff-filter=AM | grep '.php$' | xargs ./vendor/bin/phpcbf --standard=./vendor/behance/php-sniffs/Behance/ruleset.xml"
alias phpu="./vendor/bin/phpunit"
# alias gfix='git diff upstream/master --name-only  --pretty=format: --diff-filter=AM | grep '\''.php$'\'' | xargs -I{} -L 1 sh -c '\''./vendor/bin/phpmd {} text unusedcode; ./vendor/bin/phpcbf --standard=./vendor/behance/php-sniffs/Behance/ruleset.xml {}'\'''
