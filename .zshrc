export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# init oh my zsh aliases first and then being able to override them
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# common aliases
alias vi="/usr/local/bin/nvim"
alias h="cd ~"
alias t="htop"
alias g="git status"
alias gca1="git commit -a -v --amend"

# config aliases
alias a="vi ~/.config/alacritty/alacritty.yml"
alias v="vi ~/.config/nvim/init.vim"
alias z="vi ~/.zshrc"

# project aliases
alias b="cd ~/work/backend"
alias p="cd ~/work/portal"
alias s="cd ~/work/signup"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin