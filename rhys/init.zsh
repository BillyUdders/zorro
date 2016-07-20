#!/bin/zsh

#####################################################################################################
#												    #	
# This is my own personal repo of crud that I use to move around and make my life a little easier.  #
#												    #				
#####################################################################################################

######################
# Custom dev commands
alias c='clear'
alias gs='git status'
alias mud='git remote update && git merge upstream/develop'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias zshr='source ~/.zshrc'
alias l='la'

#####################
# We are all douchebags sometimes, just deal with it...
if which rmtrash >/dev/null 2>&1; then
  alias rm='rmtrash'
else 
  alias rm='trash-put'
fi

######################
# Additional Git Shit
alias gplr="git pull --rebase"
alias gchk="git checkout"

######################
# Reconfigure
alias zshconfig="vim ~/.zshrc"

######################
# Break glass in case of vi mode
bindkey '^R' history-incremental-search-backward

######################
# Attaching to dev Docker box
if which docker-machine >/dev/null 2>&1 && [ ! -z "$PS1" ] && docker-machine status dev|grep -q Running; then
  eval $(docker-machine env dev)
fi

