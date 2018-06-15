export PS1='💰  \[\e[0;94m\]\w\[\e[0m\]\[\e[0;93m\]$(__git_ps1 " (%s)")\[\e[0m\] '

# Personal & Homebrew
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# PHP
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# Composer
export PATH=~/.composer/vendor/bin:$PATH

# Bash completion
source $(brew --prefix)/etc/bash_completion

alias php-sniff="git diff upstream/master --name-only  --pretty=format: --diff-filter=AM | grep '.php$' | xargs ./vendor/bin/phpcs --standard=./vendor/behance/php-sniffs/Behance/"
alias php-fix="git diff upstream/master --name-only  --pretty=format: --diff-filter=AM | grep '.php$' | xargs ./vendor/bin/phpcbf --standard=./vendor/behance/php-sniffs/Behance/ruleset.xml"
alias phpu="./vendor/bin/phpunit"
# alias gfix='git diff upstream/master --name-only  --pretty=format: --diff-filter=AM | grep '\''.php$'\'' | xargs -I{} -L 1 sh -c '\''./vendor/bin/phpmd {} text unusedcode; ./vendor/bin/phpcbf --standard=./vendor/behance/php-sniffs/Behance/ruleset.xml {}'\'''

[[ -r "${HOME}/dotenv/aliases.sh" ]] && source "${HOME}/dotenv/aliases.sh"

[[ -r "${HOME}/.bash_local" ]] && source "${HOME}/.bash_local"
