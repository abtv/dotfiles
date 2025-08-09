# defaults
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

# programs
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/node@22/bin:$PATH
export PATH=~/.npm-global/bin:$PATH

# init oh my zsh aliases first
export ZSH=/Users/andrew/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git fzf)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

eval "$(zoxide init zsh)"

# common aliases
alias vi="nvim"
alias ff="fzf"
alias ls="eza"
alias la="eza -la"
alias d="cd ~/dotfiles/"
alias work="cd ~/work/"
alias dps="docker ps"

# Git aliases
alias gca1="git commit -a -v --amend"
alias gp="git push origin HEAD"
alias g="tig"
alias save="git add .;git commit -a -m 'Update'"

# AWS aliases
alias aws-config="aws configure sso"
alias aws-login="aws sso login --profile ProfileName"
alias aws-creds="vi ~/.aws/credentials"

# Kubernetes aliases
alias kpnspc="k9s --config ~/.kube/prod -n namespace"
alias knnspc="k9s --config ~/.kube/nonprod -n namespace"
alias hpnspc="helm --config ~/.kube/prod -n namespace"
alias hnnspc="helm --config ~/.kube/nonprod -n namespace"

function help() {
  cat <<'EOF'
  Useful CLI commands:

  top:                                                # display sorted information about processes
    top -o cpu                                          # by CPU usage
    top -o mem                                          # by memory usage

  lsof:                                               # list open files
    lsof -i :8080                                       # by port
    lsof -i UDP                                         # by protocol
    lsof -p 1234                                        # by process id
    lsof -u user                                        # by user name
    lsof -c nginx                                       # by process name
    lsof -N                                             # when using NFC (network file system)

  find:                                               # walk a file hierarchy
    find . -size +1M                                    # find files bigger than 1 megabyte in the current dir
    find . -size -1M                                    # find files smaller than 1 megabyte in the current dir
    find / -name package                                # find files by name in root folder
    find / -name "package*"                             # find files by name in root folder
    find / -type f                                      # find files
    find / -type d                                      # find directories

  grep:                                               # file pattern searcher
    grep pattern -r .                                   # search for pattern in the current directory

  curl:                                               # transfer a URL
    curl -i example.com                                 # include response headers in the output
    curl -H 'header: value' example.com                 # include response headers in the output
    curl -X POST -d @filename http://hostname/resource  # restful POST request

  du:                                                 # display disk usage statistics
    du -sh .                                            # display total file size in current directory
EOF
}

alias h="help | less"

# this is a shared file so DON'T put secrets here
