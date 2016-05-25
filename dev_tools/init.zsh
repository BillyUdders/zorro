#############################################################################################################################
#															    #	
# This is a repo of the tools that I use to do dev work, stuff for languages that I have developed in and package managers. #
#															    #
#############################################################################################################################

######################
# Brewarinos
if which brew >/dev/null 2>&1; then
  alias br="brew"
  alias bro="brew update && brew outdated"
  alias brup="bro && brew upgrade --all && brew cleanup"
  alias brc="brew cask"
  alias bri="brew install"
  alias brs="brew search"
  alias brh="brew home"
  alias brdr="brew doctor"
fi

#######################
# Docker
if which docker >/dev/null 2>&1; then
  alias dc='docker-compose'
  alias killem='docker ps -aq | xargs docker rm -f'
  alias logs='docker logs -f $@'
fi

#######################
# Maven
if which mvn >/dev/null 2>&1; then
  alias mvn='mvn-color'

   mvnrun () {
     echo  mvn $@
     eval  mvn $@
     echo  mvn $@
   }  

   alias mci='mvnrun clean install'
   alias mjr='mvnrun jetty:run'
   alias mcist='mvnrun clean install -Dmaven.test.skip=true $@'
   alias mcisd='mcist -DskipDockerBuild'
   alias mt='mvnrun test $@'
   alias mc='mvnrun clean $@'
   alias mct='mvnrun clean test $@'
fi

#######################
# Python stuff, work in progress
if which brew >/dev/null 2>&1; then
  export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

