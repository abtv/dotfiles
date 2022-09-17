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
alias em="emacs"
alias doom="~/.emacs.d/bin/doom"
alias h="htop"
alias n="cd ~/work/notes/"
alias work="cd ~/work/"
alias box="cd ~/box/"

# Git aliases
alias gca1="git commit -a -v --amend"
alias gp="git push origin HEAD"
alias g="tig"

# Node.js aliases
alias b="npm run build"
alias u="NODE_ENV=test npx jest --runInBand "
alias ud="NODE_ENV=test node --inspect-brk -r tsconfig-paths/register -r ts-node/register node_modules/.bin/jest --runInBand --forceExit "
alias e="NODE_ENV=test npx jest --config ./test/jest-e2e.json --runInBand "
alias ed="NODE_ENV=test node --inspect-brk -r tsconfig-paths/register -r ts-node/register node_modules/.bin/jest --config ./test/jest-e2e.json --runInBand --forceExit "
alias a="time (b && u && e)"

# project aliases
alias d="cd ~/dotfiles"

# golang
export GOPATH=~/go
export GOROOT=~/go

cd ~/work/

set -o vi

# this is a shared file so DON'T put secrets here
