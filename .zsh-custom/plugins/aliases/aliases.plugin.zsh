alias reload="exec $SHELL -l"

# alias hub=git
alias tower='gittower'
alias tsn="ts-node"

alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'

alias om='subl $(git status --porcelain | awk '"'"'{print $2}'"'"')'

# alias om="git ls-files --modified | xargs"

# alias cart='carthage'
# alias s3="s3cmd"
# alias mm="middleman"
# alias swift="/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift"

# export PATH=$HOME/.composer/vendor/bin:$PATH
