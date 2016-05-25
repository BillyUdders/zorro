# zorro
ZSH Plugin repo...

Mkdir .zsh.plugins, clone this into it and add this to your ~/.zshrc: 

	if [[ -s "${ZDOTDIR:-$HOME}/.zsh.plugins/zorro/init.zsh" ]]; then
	   source "${ZDOTDIR:-$HOME}/.zsh.plugins/zorro/init.zsh"
	fi

This should give you your dev tools on any machine where you have zsh installed.
