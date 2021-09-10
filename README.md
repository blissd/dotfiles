## dotfiles

My dotfiles, bootstrapped from [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles).

**To install:**

I now use `chezmoi` to manage dotfiles. On Ubuntu install `chezmoi` with
```console
$ snap install chezmoi --classic
```

To install dotfiles:
```console
$ chezmoi init blissd --apply
```

**To customize:**

Some dotfiles are templates processed by `chezmoi`. If a template requires some data put it it
`~/.config/chezmoi/chezmoi.toml`. e.g.,

```toml
[data]
	email = me@example.com
```

Save env vars, etc in a `.extra` file, that looks something like
this:

```bash
###
### Git credentials
###

GIT_AUTHOR_NAME="Your Name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="email@you.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
GH_USER="nickname"
git config --global github.user "$GH_USER"
```

