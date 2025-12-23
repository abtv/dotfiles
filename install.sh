# Install UI programs
brew install --cask karabiner-elements
brew install --cask ghostty
brew install --cask zed

# Install CLI programs
brew install neovim
brew install ripgrep
brew install fzf
brew install fd
brew install eza
brew install zoxide
brew install tig
brew install htop
brew install tree
brew install awscli
brew install kubernetes-cli
brew install k6
brew install k9s
brew install helm

# Install fonts
brew install --cask font-jetbrains-mono

# Install programming languages
brew install node@22
brew install poetry

# Karabiner
mkdir -p ~/.config/karabiner
ln -sf ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json

# Ghostty
mkdir -p ~/Library/Application\ Support/com.mitchellh.ghostty
ln -sf ~/dotfiles/ghostty/config ~/Library/Application\ Support/com.mitchellh.ghostty/config

# Git
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# Tig
ln -sf ~/dotfiles/.tigrc ~/.tigrc

# Editor config
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig

# Vim and VimMode
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/vimrc ~/.ideavimrc
ln -sf ~/dotfiles/vimrc ~/.vimrc

# Vim as a Git editor
git config --global core.editor nvim

# Increase keyboard repeat rate
defaults write -g InitialKeyRepeat -int 10 # default 15
defaults write -g KeyRepeat -int 1         # default 2

# For VS Code and Cursor
defaults write -g ApplePressAndHoldEnabled -bool false

# Don't forget to restart your machine!
