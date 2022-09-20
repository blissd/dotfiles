#!/bin/sh

# Install the 'pure' theme.
if command -v git &> /dev/null; then
	mkdir -p "$HOME/.zsh"
	rm -rf $HOME/.zsh/pure
	git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fi

