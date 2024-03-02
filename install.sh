# Install CLI programs
brew install neovim
brew install tig
brew install htop
brew install tree
brew install node@20
brew install awscli
brew install kubernetes-cli
brew install k6

# Install UI programs
brew install --cask karabiner-elements
brew install --cask iterm2
brew install --cask docker
brew install --cask intellij-idea-ce
brew install --cask phpstorm
brew install --cask workflowy
brew install --cask nosqlbooster-for-mongodb
brew install --cask postico
brew install --cask vlc

# Karabiner
mkdir -p ~/.config/karabiner
ln -sf ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json

# Git
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# Editor config
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig

# Vim and VimMode
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/vimrc ~/.ideavimrc

# Vim as a Git editor
git config --global core.editor nvim

# Increaase keyboard repeat rate
defaults write -g InitialKeyRepeat -int 10 # default 15
defaults write -g KeyRepeat -int 1         # default 2

# Don't forget to restart your machine!
