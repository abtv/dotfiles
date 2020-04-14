# My configs

## Key principles

- do as much as possible without a mouse

- switch between applications with hotkeys and don't use window animations

- most used hotkeys must be pressed as a key with a modifier

- development environment shouldn't consume a lot of CPU. It's useful when using a laptop on a battery.


## Setup

1. Install `brew`

2. Install `oh-my-zsh`

3. Clone the repo to ~/dotfiles.

4. Run `install.sh`

5. Run vim and then :PlugInstall


## Karabiner

Most useful settings are: Caps/Enter as Enter when nothing else is pressed and Caps/Enter as Conrol if pressed something else.

I also mapped Cmd+hjkl to vim-like cursor movements in Mac OS. It's useful in all applications.

Keybindings:

Cmd-1 Firefox

Cmd-2 Alacritty

Cmd-3 Slack

Cmd-4 Postico

Cmd-8 Telegram

Cmd-9 Sublime (for quick notes)

Cmd-0 Notion (for task lists, agenda, etc)

Don't open these apps in fullscreen mode and you will switch between them immediately.


## Tmux

`Cmd-t` create a new window

`Cmd-w` close current window (or you can use C-d)

`Cmd-[` go to the left window

`Cmd-]` go to the right window

`Cmd-f` enter copy mode (use q or Enter to exit) and you can use vi movements (hjkl C-d C-u) and search


## Terminal aliases

### General

`ta`   attach to a running tmux session

`d`    switch to `dotfiles` folder


### Editors

`vi`   starts NeoVim


### Git

`tig`  git interface

`gst`  git status

`gd`   git diff

`gsps` git show --pretty=short --show-signature

`glol` git log with one line

`gl`   git pull

`gp`   git push

`gm`   git merge

`gca`  git commit -v -a

`gca1` git commit -v -a --amend


## Vim mappings

`SPC q q` quit

`C-o`     toggle NerdTree

`C-p`     search in files

`C-j`     previous buffer

`C-k`     next buffer

`SPC d`   kill buffer

`C-n`     autocomplete

`C-f`     grep in files

`SPC f`   prefills :Ag

`C-y`     run tests

`SPC g b` git blame in current file

`SPC w w` next window

`SPC w m` maximize current window
