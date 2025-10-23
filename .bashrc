# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

alias la='ls -AhlF'

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpf='git push -f'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias grep='grep --color=auto'

alias df='df -h'
alias du='du -h'

alias ip='curl ifconfig.me'

alias update='sudo apt update && sudo apt upgrade'

alias dp='docker ps'
alias dpa='docker ps -a'
alias di='docker images'
alias dc='docker container'

alias desk='cd ~/Desktop'
alias down='cd ~/Downloads'

alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc && source ~/.bashrc'

alias mkcd='mkdir -p "$1" && cd "$1"'  # Create and enter directory

