# Install UI programs
brew install --cask iterm2
brew install --cask karabiner-elements
brew install --cask logseq

# Install CLI programs
brew install neovim
brew install ripgrep
brew install fzf
brew install tig
brew install htop
brew install tree
brew install awscli
brew install kubernetes-cli
brew install k6
brew install k9s

# Install programming languages
brew install node@22
brew install rustup
rustup default stable
brew install clojure
brew install leiningen

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

# Increase keyboard repeat rate
defaults write -g InitialKeyRepeat -int 10 # default 15
defaults write -g KeyRepeat -int 1         # default 2

# For VS Code and Cursor
defaults write -g ApplePressAndHoldEnabled -bool false

# Don't forget to restart your machine!
