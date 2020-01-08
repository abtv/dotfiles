# My configs


## Setup

1. Install karabiner.

2. Install alfred 4.

3. Install alacritty.

4. Install neovim.

5. Install ohmyzsh.

6. Install tig.

7. Clone the repo to ~/dotfiles.

8. Run ./setup.sh.

9. Run vim and then :PlugInstall


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

C-w w next window

SPC w m - maximize current window
