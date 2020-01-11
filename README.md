# My configs

## Key principles

- do as much as possible without a mouse

- switch between applications with hotkeys and don't use window animations

- most used hotkeys must be pressed as a key with a modifier

- development environment shouldn't consume a lot of CPU. It's useful when using a laptop on a battery.


## Setup

1. Install karabiner.

2. Install alfred 4.

3. Install alacritty.

4. Install tmux.

5. Install neovim.

6. Install ohmyzsh.

7. Install tig.

8. Clone the repo to ~/dotfiles.

9. Run ./setup.sh.

10. Run vim and then :PlugInstall


## Karabiner

Most useful settings are: Caps/Enter as Enter when nothing else is pressed and Caps/Enter as Conrol if pressed something else.

I also mapped Cmd+hjkl to vim-like cursor movements in Mac OS. It's useful in all applications.


## Alfred workflows

Cmd-1 Firefox

Cmd-2 Alacritty

Cmd-3 Slack

Cmd-4 Postico

Cmd-0 Sublime (with opened todo.txt file)

Don't open these apps in fullscreen mode and you will switch between them immediately.


## Tmux

Cmd-t create a new window

Cmd-w close current window (or you can use C-d)

Cmd-[ go to the left window

Cmd-] go to the right window

Cmd-f enters copy mode (use q or Enter to exit) and you can use vi movements (hjkl C-d C-u) and search


## Terminal settings aliases

oa open Alacritty config

oz open zsh config

ot open tmux config

ov open vim config


## Terminal aliases

g    git status

gd   git diff

gsps git show --pretty=short --show-signature

glol git log with one line

gl   git pull

gp   git push

gm   git merge

gca  git commit -v -a

gca1 git commit -v -a --amend


## Vim mapping

C-q C-q quit

C-o toggle NerdTree

C-p search in files

C-j previous buffer

C-k next buffer

C-n autocomplete

C-f grep in files

C-y run tests

C-b git blame in current file

SPC w w next window

SPC w m - maximize current window
