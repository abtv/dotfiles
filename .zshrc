# defaults
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# programs
export PATH=/usr/local/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/bin:$PATH
export PATH="/usr/local/opt/node@16/bin:$PATH"

# init oh my zsh aliases first and then being able to override them
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# common aliases
alias vi="nvim"
alias e="exit"
alias ws="webstorm ."
alias h="htop"
alias work="cd ~/work/"
alias notes="cd ~/notes/"
alias box="cd ~/box/"

# Git aliases
alias gca1="git commit -a -v --amend"
alias gp="git push origin HEAD"
alias g="tig"

# project aliases
alias d="cd ~/dotfiles"

# this is a shared file so DON'T put secrets here
