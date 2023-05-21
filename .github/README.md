# mathiaswold's dotfiles

My personal dotfiles and setup scripts :rocket:

## Mac setup

### Xcode command line tools

```bash
xcode-select --install
```

### Rosetta 2

```bash
softwareupdate --install-rosetta
```

### Dotfiles repository
Based on [this article](https://fwuensche.medium.com/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b).

```bash
git clone --bare https://github.com/mathiaswold/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

### macOS defaults

```bash
./.macos
```

### Homebrew

[Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) is used to manage packages and casks. The following will install dependencies from the [Brewfile](../Brewfile).

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle install
```

### fish shell
Used with [fisher](https://github.com/jorgebucaran/fisher) plugin manager and [pure](https://github.com/pure-fish/pure) prompt.

```bash
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher update
```

### git

```bash
gh auth login
```

### Python

[pyenv](https://github.com/pyenv/pyenv) is used to manage Python versions.

```bash
pyenv install <version>
pyenv global <version>
```

[virtualfish](https://virtualfish.readthedocs.io/en/latest/index.html) is used to manage virtual environments.

```bash
pip install --user virtualfish
vf install auto_activation projects compat_aliases
exec fish
```
