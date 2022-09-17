# dotfiles

My dotfiles, bootstrapped from [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles).

## Pre-requisites

My dotfiles are managed by [chezmoi](https://www.chezmoi.io), so install that first.

```console
# On Ubuntu...
$ snap install chezmoi --classic

# On MacOS
$ brew install chezmoi
```

Some dotfile configuration values (such as my GitHub email address and SSH signing key) are pulled
from the 1Password, so install the command-line tool.

```console
# On Ubuntu (after installing 1Password apt repo)...
$ apt install 1password 1password-cli

# On MacOS
$ brew install 1password-cli
```

## Install dotfiles

To install dotfiles:
```console
$ chezmoi init blissd --apply
```

# .extra

Put any config that does _not_ belong in `chezmoi` into `.extra`. This file should _never_ be put
into this git repository.

