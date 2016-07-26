#######################
# Python stuff, work in progress
if which brew >/dev/null 2>&1; then
  export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi


