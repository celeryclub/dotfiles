# PHP binaries
export PATH=/usr/local/opt/php@7.1/bin:$PATH
export PATH=/usr/local/opt/php@7.1/sbin:$PATH

# Docker aliases
alias dc=docker-compose
alias dm=docker-machine
alias dmenv="eval \"\$(docker-machine env dev)\""
alias fl=flotilla

# PHP aliases
alias phpu="./vendor/bin/phpunit"
alias php-sniff="git diff upstream/master --name-only --pretty=format: --diff-filter=AM | grep '.php$' | xargs ./vendor/bin/phpcs --standard=./vendor/behance/php-sniffs/Behance/"
alias php-fix="git diff upstream/master --name-only --pretty=format: --diff-filter=AM | grep '.php$' | xargs ./vendor/bin/phpcbf --standard=./vendor/behance/php-sniffs/Behance/ruleset.xml"

# Docker status
if docker-machine ls | grep -q 'dev.*vmwarefusion.*Running'; then
  eval $(docker-machine env dev)
else
  echo "Docker-machine: Machine ""dev"" is stopped."
fi

# Karma
function karma() {
  result=$(echo $1 | sed 's|/|\\/|g')
  env TEST_FILTER=$result npm run karma:dev
}
