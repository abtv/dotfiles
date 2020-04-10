git config --global core.editor /usr/local/bin/nvim
# install
brew install tmux
brew install tig
brew install nvim
brew install htop
brew cask install alacritty
brew cask install karabiner-elements
brew cask install slack
brew cask install postico
brew cask install notion
brew cask install skype
brew cask install microsoft-teams
brew cask install telegram
# general
ln -s /Users/andrew/dotfiles/alacritty/alacritty.yml /Users/andrew/.config/alacritty/alacritty.yml
ln -s /Users/andrew/dotfiles/.zshrc /Users/andrew/.zshrc
ln -s /Users/andrew/dotfiles/.editorconfig /Users/andrew/.editorconfig
cp /Users/andrew/dotfiles/karabiner/karabiner.json /Users/andrew/.config/karabiner/karabiner.json
# vim
ln -s /Users/andrew/dotfiles/vim/init.vim /Users/andrew/.config/nvim/init.vim
ln -s /Users/andrew/dotfiles/vim/coc-settings.json /Users/andrew/.config/nvim/coc-settings.json
# emacs doom
ln -s /Users/andrew/dotfiles/doom /Users/andrew/.config/doom
# copy emacs bin to short name in tmux panel
cp /Applications/Emacs.app/Contents/MacOS/Emacs-x86_64-10_14 /Applications/Emacs.app/Contents/MacOS/em
rm ~/dotfiles/doom/doom
