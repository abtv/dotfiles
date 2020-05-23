# defaults
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export PATH=~/.npm-global/bin:$PATH
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

# init oh my zsh aliases first and then being able to override them
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# common aliases
alias vi="nvim"
alias ta="tmux attach"
alias gca1="git commit -a -v --amend"
alias dn="dotnet"

# project aliases
alias d="cd ~/dotfiles"
alias b="cd ~/work/backend"
alias p="cd ~/work/portal-spa"
alias si="cd ~/work/signup"
alias sf="cd ~/work/salesforce"
alias of="cd ~/work/office"
alias sc="cd ~/work/scraper"

export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="$PATH:/Users/andrew/.dotnet/tools"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
# this is a shared file so DON'T put secrets here
