# zorro
ZSH Plugin repo...

Mkdir .zsh.plugins and add this to your ~/.zshrc: 

	if [[ -s "${ZDOTDIR:-$HOME}/.zsh.plugins/init.zsh" ]]; then
	   source "${ZDOTDIR:-$HOME}/.zsh.plugins/init.zsh"
	fi

This should give you your dev tools on any machine where you have zsh installed.
