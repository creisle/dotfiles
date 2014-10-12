#add local bin to the path
export PATH=$PATH:~/bin

export CLICOLOR=1
#
export LSCOLORS="xhGxcxdxCxegedabagacad"

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias reload='. ~/.bashrc'

alias '...'='cd ..'
alias 'll'='ls -l'
alias 'la'='ls -la'

export PYENV_ROOT=/usr/local/opt/pyenv
eval "$(pyenv init -)"

# Added by install_latest_perl_osx.pl
[ -r /Users/creisle/.bashrc ] && source /Users/creisle/.bashrc
