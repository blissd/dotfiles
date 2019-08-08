
# Configure oh-my-zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
	source "$HOME/.oh-my-zshrc"
else
	# Set up the prompt
	# If you combine this with oh-my-zsh, then the prompt colours get mangled
	autoload -Uz promptinit
	promptinit
	prompt adam1
fi

fpath=(
    "${fpath[@]}"
    "$HOME/.zshfunctions"
)

autoload -Uz fs json man repo targz tmpd tre


setopt histignorealldups sharehistory

# Use vi keybindings
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export PATH=$PATH:/snap/bin:$HOME/bin

# Use modern completion system
autoload -Uz compinit
compinit

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


