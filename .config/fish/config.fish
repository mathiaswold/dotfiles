# initialize homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# aliases
alias cat=bat
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# abbreviations
abbr -a s git status
abbr -a c clear
abbr -a p python
abbr -a manage python manage.py
abbr -a w workon

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

# pyenv
pyenv init - | source
