#!/bin/sh
export ENV='~/.tut/profile'
alias mk='make'

man() {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

cd() {
  if [[ $1 == 'b.'* ]]; then
    builtin cd `echo "$*" | sed -e "s/b//g" | sed -e "s|.|../|g"`
  else
    builtin cd "$*"
  fi
  echo "`pwd`"
}

placewin() {
    wtp 0 0 1280 720 $(pfw)
}

GRAY="[34m"
NC="[00m"
PS1="$GRAY$ $NC"
PATH="$PATH:$HOME/bin"
TERM='xterm-256color'

alias vim='vim -u ~/.tut/vimrc'
alias vimrc='vim ~/.tut/vimrc'
export PATH TERM PS1

placewin
