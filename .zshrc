
fpath=(
    "${fpath[@]}"
    "$HOME/.zshfunctions"
)

autoload -Uz fs json k8s man rate_limit repo targz tmpd tre

setopt histignorealldups sharehistory

# Use vi keybindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


export CLICOLORS=1
export LSCOLORS=GxFxCxDxBxegedabagaced

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Use modern completion system
autoload -Uz compinit
compinit

if [[ -f "$HOME/.zplugin/bin/zplugin.zsh" ]]; then
	### Added by Zplugin's installer
	source "$HOME/.zplugin/bin/zplugin.zsh"
	autoload -Uz _zplugin
	(( ${+_comps} )) && _comps[zplugin]=_zplugin
	### End of Zplugin's installer chunk

	#zplugin light zsh-users/zsh-autosuggestions
	zplugin light zdharma/fast-syntax-highlighting

	# Load the pure theme, with zsh-async library that's bundled with it.
	zplugin ice pick"async.zsh" src"pure.zsh"
	zplugin light sindresorhus/pure
else
	# Set up the prompt
	# If you combine this with oh-my-zsh, then the prompt colours get mangled
	autoload -Uz promptinit
	promptinit
	prompt adam1
fi


