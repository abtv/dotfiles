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

5. Clone Doom Emacs and run `doom sync`

6. Download and install JebBrains Mono font https://www.jetbrains.com/ru-ru/lp/mono/#how-to-install


## Karabiner

Most useful settings are: Caps/Enter as Enter when nothing else is pressed and Caps/Enter as Conrol if pressed something else.

I also mapped Cmd+hjkl to vim-like cursor movements in Mac OS. It's useful in all applications.

Keybindings:

Cmd-1 Firefox

Cmd-2 Alacritty

Cmd-3 Slack

Cmd-4 Postico

Cmd-8 Telegram

Cmd-9 Emacs

Cmd-0 Workflowy (for task lists, agenda, etc)

Don't open these apps in fullscreen mode and you will switch between them immediately.


## Emacs mappings

`SPC ,`   switch to workspace buffer

`SPC .`   find file

`SPC :`   run function from a list

`SPC ;`   eval

`SPC SPC` find file in the project

`SPC o`   open another project

`SPC i`   switch to opened project

`SPC p`   toggle Treemacs

`SPC s`   save current buffer

`SPC f`   search in current project

`SPC l`   toggle line numbers

`SPC t`   start terminal fullscreen

`SPC d`   delete current buffer

`SPC g g` git status

`SPC g l` git pull

`SPC g p` git push

`SPC g m` git merge

`SPC b`   git branch

`SPC B`   git blame

`SPC j`   git log current branch

`SPC k`   git log current file

`SPC a c` open config.el file

`SPC a i` open init.el file

`SPC a p` open package.el file


## Tmux

`ta`    run it in your terminal to attach to a running tmux session

`Cmd-t` create a new window

`Cmd-w` close current window (or you can use C-d)

`Cmd-[` go to the left window

`Cmd-]` go to the right window

`Cmd-f` enter copy mode (use q or Enter to exit) and you can use vi movements (hjkl C-d C-u) and search


## Git

`g`    git log

`gst`  git status

`gd`   git diff

`gsps` git recent commit

`gl`   git pull

`gp`   git push

`gm`   git merge

`gca`  git commit -v -a

`gca1` git commit -v -a --amend
