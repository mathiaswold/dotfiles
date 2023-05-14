# mathiaswold's dotfiles

My personal dotfiles and setup scripts :rocket:

## Mac setup

### Xcode command line tools

```bash
xcode-select --install
```

### Dotfiles repository
Based on [this article](https://fwuensche.medium.com/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b).

```bash
git clone --bare https://github.com/mathiaswold/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
```


### Homebrew

[Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) is used to manage packages and casks.
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
