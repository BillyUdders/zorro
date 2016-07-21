#############################################################################################################################
#															    #	                                                        #
# A set of directories that have my dev tools in, you should see that commons sit in this file, and lang/os specific stuff  #
# are in the specific sub directories, to add a set of tools create a dir and source the init.zsh in the top level.         #
#															    #                                                           #
#############################################################################################################################

#######################
# Docker
if which docker >/dev/null 2>&1; then
  alias dc='docker-compose'
  alias killem='docker ps -aq | xargs docker rm -f'
  alias logs='docker logs -f $@'
fi

######################
# AWS Tools 
if which aws >/dev/null 2>&1; then
  source /usr/local/share/zsh/site-functions/_aws
fi

source `dirname $0`/os/init.zsh
source `dirname $0`/lang/init.zsh
