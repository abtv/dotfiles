# defaults
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# programs
export PATH=/usr/local/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/node@20/bin:$PATH

# init oh my zsh aliases first
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# common aliases
alias vi="nvim"
alias h="htop"
alias d="cd ~/dotfiles/"
alias work="cd ~/work/"

# Git aliases
alias gca1="git commit -a -v --amend"
alias gp="git push origin HEAD"
alias g="tig"
alias save="git add .;git commit -a -m 'Update'"

# AWS aliases
alias aws-config="aws configure sso"
alias aws-login="aws sso login --profile ProfileName"
alias aws-creds="vi ~/.aws/credentials"

# this is a shared file so DON'T put secrets here
