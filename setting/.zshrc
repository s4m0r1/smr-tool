#s4m0r1-zsh-
#autoload
autoload -U compinit promptinit
compinit
promptinit
#Theme
prompt fade green 
#tab autocompletion
zstyle ':completion:*' menu select
#cd to ls 
function chpwd() { ls -aCFG }
#history
setopt HIST_IGNORE_DUPS
