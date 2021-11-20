#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ -f /etc/bash_completion ]; then
	    /etc/bash_completion
fi

alias ls='ls --color=auto'
PS1='\[\e[0m\][\[\e[0m\]\!\[\e[0m\]:\[\e[0m\]\w\[\e[0m\]:\[\e[0m\]$?\[\e[0m\]]\[\e[0m\]$\[\e[0m\] '
alias config='/usr/bin/git --git-dir=/home/m/.dotfiles/ --work-tree=/home/m'
