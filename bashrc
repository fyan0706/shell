# .bashrc

# User specific aliases and functions

# ------------------------------------
# Color variables
# ------------------------------------
# Regular Colors
Black='\e[0;30m'
Red='\e[0;31m'
Green='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Purple='\e[0;35m'
Cyan='\e[0;36m'
White='\e[0;37m'
Light_Gray='\033[0;37m'

# Bold
BBlack='\e[1;30m'
BRed='\e[1;31m'
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
BCyan='\e[1;36m'
BWhite='\e[1;37m'
BLight_Gray='\033[1;37m'

PS1='[\u@\h \[\e[36;40m\]\w\[\e[0m\]]\\$ '

alias rm='rm -rf'
alias mv='mv -i'
alias cp='cp -ru'
alias ps="ps aux"
alias ll="ls -lh"
alias lt="ls -lht"
alias kill="kill -9"

# export xxx=yyy

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
