# Call from a local repo to open the repository on github/bitbucket in browser
# Modified version of https://github.com/zeke/ghwd

function git-rm-orphans() {
	git fetch --prune
	git branch -v|grep '\[gone\]'|sed 's/^[[:blank:]]*//g'|cut -f1 -d' '|xargs git branch -d
}

