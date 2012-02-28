#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias pacman='sudo pacman-color'
alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[36m\]\u@\h:\w\$\[\e[0m\] '

#PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( `sed -nu "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo`/1024))"\033[38;5;22m/"$((`sed -nu "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo`/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"'
#PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)\$ '

#PS1=">\[\033[s\]\[\033[1;\$((COLUMNS-4))f\]\$(date +%H:%M)\[\033[u\]"

#PS1='\[\033[0;34m\][\T] \[\033[00;33m\][\W]\[\033[0;31m\] :\[\033[0m\] '

PS1='\[\033[1;37;45m\]> \[\033[0;40m\]\w\[\033[0;31m\]\n\$ \[\033[0m\]'

export EDITOR='vim'

complete -cf sudo
