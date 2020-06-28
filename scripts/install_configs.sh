# Git
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# Alacritty
mkdir -p ~/.config/alacritty
ln -sf ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# ZSH
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Karabiner
mkdir -p ~/.config/karabiner
ln -sf ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# Editor config
ln -sf ~/dotfiles/.editorconfig ~/.editorconfig

# Vim
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/vim/coc-settings.json ~/.config/nvim/coc-settings.json

# Vim as a Git editor
git config --global core.editor /usr/local/bin/nvim

# VSCode
ln -sf ~/dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sf ~/dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User
