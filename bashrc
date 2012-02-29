#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# options --------------------------------
shopt -s expand_aliases
shopt -s histappend

# disable ^S/^Q -------------------------- From: [Thayler Williams]
if tty -s ; then
    stty -ixon
    stty -ixoff
fi

# alias ----------------------------------
alias pacman='sudo pacman-color'
alias ls='ls --color=auto -F'

# variables ------------------------------
export PS1='\[\033[1;37;45m\]> \[\033[0;40m\]\w\[\033[0m\]\n\[\033[0;31m\]\$ \[\033[0m\]'
export PS2='\[\033[0;31m\]\$ \[\033[0m\]' #for multi line
export EDITOR='vim'

# bash sudo completion -------------------
complete -cf sudo
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# LESS man page colors ------------------- From: [Thayler Williams]
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
