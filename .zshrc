# defaults
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# init oh my zsh aliases first and then being able to override them
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# common aliases
alias em="emacsclient -nw"
alias vi="nvim"
alias ta="tmux attach"
alias gca1="git commit -a -v --amend"

# project aliases
alias d="cd ~/dotfiles"
alias or="cd ~/Dropbox"
alias b="cd ~/work/backend"
alias p="cd ~/work/portal"
alias si="cd ~/work/signup"
alias of="cd ~/work/office"
alias sc="cd ~/work/scraper"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# run emacs in background for faster startup
if ! ps aux | egrep '[E]macs.*-daemon' > /dev/null
then
  echo "Running Emacs (don't worry: it will run only once)"
  emacs --eval='(progn (org-agenda-list)(kill-this-buffer))' --daemon &> /dev/null
fi

# this is a shared file so DON'T put secrets here
