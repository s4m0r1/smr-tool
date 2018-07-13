#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



#alias
alias ls='ls -la --color=auto'

#PATH

export PATH=$HOME/.local/bin:$PATH

#User
PS1='[\u@\h \W]\$ '




tmux
screenfetch -t
sleep 0.3
clear
