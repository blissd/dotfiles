# Environment variables

# discard duplicates from both PATH and path
typeset -U PATH path

# Skip the not really helping Ubuntu global compinit
skip_global_compinit=1

# .extra contains environment variables that shouldn't be in source control.
if [ -f $HOME/.extra ]; then
	source $HOME/.extra
fi

if [ -d $HOME/go ]; then
	export GOPATH=$HOME/go
fi

DIRS=(
	/snap/bin
	$HOME/bin
	$HOME/.local/bin
	$HOME/go/bin
	)

for d in $DIRS; do
	if [ -d $d ]; then
		export PATH=$PATH:$d
	fi
done

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

export PAGER=less
export EDITOR=vim

# Prefer GB English and use UTF-8
export LANG="en_GB.UTF-8"
export LC_ALL="en_GB.UTF-8"

