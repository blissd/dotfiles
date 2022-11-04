#!/usr/bin/env zsh
#

THEME=$($HOME/.zshfunctions/appearance)
if [ -f $HOME/.config/kitty/$THEME-theme.conf ]; then
	cp $HOME/.config/kitty/$THEME-theme.conf $HOME/.config/kitty/current-theme.conf
fi

