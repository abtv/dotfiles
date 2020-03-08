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
alias em="emacs -nw"
alias t="htop"
alias f="fg"
alias j="jobs"
alias h="cd ~"
alias g="git status"
alias gca1="git commit -a -v --amend"

# config aliases
alias oa="vi ~/.config/alacritty/alacritty.yml"
alias oz="vi ~/.zshrc"
alias ot="vi ~/.tmux.conf"
alias ov="vi ~/.config/nvim/init.vim"

# project aliases
alias d="cd ~/dotfiles"
alias b="cd ~/work/backend"
alias p="cd ~/work/portal"
alias s="cd ~/work/signup"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux attach
fi

# this is a shared file so DON'T put secrets here
