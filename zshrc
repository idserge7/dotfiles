# Virtualenv
WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# ZSH
export ZSH=$HOME/.tools/oh-my-zsh
export ZSH_CUSTOM=$HOME/dotfiles/zsh_custom

ZSH_THEME="serpent"
DISABLE_AUTO_UPDATE="true"
plugins=(git vi-mode virtualenv virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# User configuration
alias vim="nvim"
alias vi="nvim"
alias ppwd='export PYTHONPATH=$("pwd")'
alias djcov="coverage run --source='.' manage.py test && coverage html && xdg-open ./htmlcov/index.html"
alias pipo="pip list -o --format=columns"
alias moc="mocp"
# ranger quit to opened dir
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'

export EDITOR=nvim

# Theme
BASE16_SHELL=$HOME/.tools/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_gruvbox-dark-medium

# Key bindings
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'l' vi-forward-char

# vim shortcuts for normal mode
function split_h {
    tmux split-window -h -c $(pwd)
}
zle -N split_h

function split_v {
    tmux split-window -v -c $(pwd)
}
zle -N split_v

bindkey -M vicmd ' w/' split_h
bindkey -M vicmd ' w-' split_v
