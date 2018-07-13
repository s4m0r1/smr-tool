#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Git
function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
} 



#alias
alias ls='ls -lah --color=auto'
alias ll='ls'
alias sc='screenfetch -t'
alias vim='nvim'
alias vi='nvim'

#PATH
export PATH=$HOME/.local/bin:$PATH
export XDG_CONFIG_HOME="$HOME/.config"

#User
#PS1='[\u@\h \W]\$ '
export PS1="\w\n\$(parse_git_branch)\\$ "


tmux
screenfetch -t
sleep 0.3
clear
