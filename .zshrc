export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# init oh my zsh aliases first and then being able to override them
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# common aliases
alias em="/Applications/Emacs.app/Contents/MacOS/em -nw"
alias org="em --eval='(org-agenda-list)'"
alias vi="nvim"
alias ta="tmux attach"
alias gca1="git commit -a -v --amend"

# project aliases
alias d="cd ~/dotfiles"
alias o="cd ~/Dropbox"
alias b="cd ~/work/backend"
alias p="cd ~/work/portal"
alias s="cd ~/work/signup"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# this is a shared file so DON'T put secrets here
