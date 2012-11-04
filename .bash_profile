export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

# /usr/local/Cellar/ruby/1.9.3-p125/bin
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

export PATH=$HOME/.pythonbrew/pythons/Python-2.7.3/lib/python2.7/site-packages/django/bin:$PATH
# export PATH=$HOME/.pythonbrew/pythons/Python-3.2.3/lib/python3.2/site-packages/django/bin:$PATH

# For django python-mysqldb adapter:
# export PATH=$PATH:/usr/local/Cellar/mysql/5.5.27/bin/

cd ~/Sites/
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
