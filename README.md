# zorro
ZSH Plugin repo...

This was going to be it's own independent thing and can be used that way a user wants to. For me I am going to use Ansible to actuate this and a script to do most of my heavylifting. Eventually I will write a package management system that tries to rival antigen etc. as that's a goal of mine is to make ZSH management as easy as it is to manage your distro's packages. How that USP works out is still quite undecided, but it is a bigger task than I have time for at the moment and I am hitting the drawing board and the books. 

I want to be command line accessable, have a repo stored somewhere and there are whole huge road blocks that I need to size up and then understand if I can even achieve, whether alone or even at all. 

If you wish to use this repo as your dot files, clone it somewhere in your home. This is how I would source this in your .zshrc. You may have to install trash cli or rmtrash if you are a Mac user. But by all means please use this method to source (Similar to Zprezto). 

	if [[ -s "${ZDOTDIR:-$HOME}/<path-to-your-cloned>/zorro/init.zsh" ]]; then
	   source "${ZDOTDIR:-$HOME}/<path-to-your-cloned>//zorro/init.zsh"
	fi

This should give you my dev tools on any machine where you have zsh installed.
