# defaults
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# programs
export PATH=/usr/local/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/bin:$PATH
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"

# init oh my zsh aliases first and then being able to override them
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# common aliases
alias t="terraform "
alias ta="tmux attach"
alias vi="nvim"
alias em="emacs"
alias h="htop"
alias doom="~/.emacs.d/bin/doom"
alias ws="webstorm ."
alias n="nest "

# Git aliases
alias gca1="git commit -a -v --amend"
alias gp="git push origin HEAD"

# Git aliases
alias g="tig"
alias glol="tig"

# project aliases
alias d="cd ~/dotfiles"
alias a="cd ~/work/api"
alias b="cd ~/work/backend"
alias p="cd ~/work/portal-spa"
alias si="cd ~/work/signup"
alias sf="cd ~/work/salesforce"
alias of="cd ~/work/office"
alias sc="cd ~/work/scraper"

# this is a shared file so DON'T put secrets here
