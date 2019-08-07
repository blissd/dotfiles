# Environment variables

# .extra contains environment variables that shouldn't be in source control.
if [ -f $HOME/.extra ]; then
	source $HOME/.extra
fi

if [ -d $HOME/go/bin ]; then
	export GOPATH=$HOME/go
	export PATH=$PATH:$GOPATH/bin
fi

