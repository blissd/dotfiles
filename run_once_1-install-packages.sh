#!/bin/sh

# Install the 'pure' theme.
if command -v git &> /dev/null; then
	DIR="$HOME/.zsh/pure"
	rm -rf $DIR
	mkdir -p $DIR
	git clone https://github.com/sindresorhus/pure.git $DIR
fi

# Install vim-plug for managing neovim plugins
if command -v curl &> /dev/null; then
	DIR="$HOME/.config/nvim/autoload"
	mkdir -p $DIR
	curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o $DIR/plug.vim
fi
