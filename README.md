# My configs

## Tools

| Tool      | Usage                         |
|-----------|-------------------------------|
| Alacritty | Terminal emulator             |
| Tmux      | Terminal multiplexer          |
| NeoVim    | Code and text editor with LSP |
| Tig       | Git pager                     |


## Important decisions on tools

### 1. Alacritty as a terminal emulator

There are 2 reasons to use Alacritty as a terminal emulator:

First, Alacritty allows to override keybindings: for example, I use Cmd+H to move left instead of left arrow and I don't have to move my palm to arrow keys. Also I prefer single-keystroke (Cmd+P) over two keystokes (SPC P) and this is also mapped in Alacritty.

Second, Alacritty is just fast.


### 2. Tmux as a terminal multiplexer

I also use Tmux because Alacritty is just a terminal emulator and I need a terminal multiplexer too.

 
### 3. Vim as a code and text editor

First, usually I work with several projects during a day and I want a unified interface which terminal provides easily. That's why I have 4 tabs open in my terminal. Each tab represents one project in Vim or just a folder.

Second, Vim is a light-weight text editor with small latency and ergonomic typing. LSP makes it pretty smart: Vim can do all the things that VSCode can do. Vim and VSCode are pretty close but Vim works faster and it's easier to type in Vim for me.


### 4. Git pager

Usually I use Tig if I don't have Vim opened or Vim Fugitive if I opened a project in Vim. Both options are fast enough and pretty convenient to use.


## Important decisions on MacOS

### 1. Reduced key repeat rate

I'm a touch-typist and I don't like standard MacOS repeat rate. I modified it with `mac_increase_keyboard_repeat_rate.sh` script because UI settings don't allow to make it fast enough (at least for me).


### 2. Map CapsLock to Control

It's easier to press CapsLock than Control.


### 3. Don't open a window in full-screen mode

MacOS uses an animation when switches between full-screen windows. These animations are distracting me and that's why I don't open a window full-screen.


## Setup

1. Install `brew`

2. Install `oh-my-zsh`

3. Clone the repo to `~/dotfiles`

4. Run `install_packages.sh`

5. Run `install_configs.sh`

6. Run `mac_increase_keyboard_repeat_rate.sh` and restart MacOS.

7. (Optional) run `mac_heavy_font_smoothing.sh` if you have low pixel density (old display).

8. Download and install JebBrains Mono font https://www.jetbrains.com/ru-ru/lp/mono/#how-to-install


## Tmux

| Command     | Action                                                                                          |
|-------------|-------------------------------------------------------------------------------------------------|
| Cmd-t       | create a new workspace (tab in terminal)                                                        |
| Cmd-1       | switch to 1st workspace                                                                         |
| Cmd-2       | switch to 2nd workspace                                                                         |
| Cmd-3       | switch to 3rd workspace                                                                         |
| Cmd-4       | switch to 4th workspace                                                                         |
| Cmd-Shift-[ | go to the left workspace (not recommended, better to use Cmd-number)                            |
| Cmd-Shift-] | go to the right workspace (not recommended, better to use Cmd-number)                           |
| Cmd-d       | enter copy mode (use q or Enter to exit) and you can use vi movements (hjkl C-d C-u) and search |


## Git aliases

| Command | Action                   |
|---------|--------------------------|
| g       | git log                  |
| gst     | git status               |
| gd      | git diff                 |
| gsps    | git show recent commit   |
| gl      | git pull                 |
| gp      | git push origin HEAD     |
| gm      | git merge                |
| gca     | git commit -v -a         |
| gca1    | git commit -v -a --amend |

Don't forget to run:

```bash
git config --global user.name "your-name"
git config --global user.email "your-email"
```


## Vim mappings

| Command                           | Action                            |
| --------------------------------- | --------------------------------- |
| CMD+;                             | search in file names              |
| CMD+p                             | open project tree                 |
| CMD+P                             | open current file in project tree |
| CMD+f                             | grep in files                     |
| CMD+,                             | show open buffers                 |
| CMD+.                             | show recent files                 |
| CMD+/                             | toggle comment                    |
|                                   |                                   |
| CMD+s                             | save current buffer               |
| CMD+w                             | close current buffer              |
| SPC x                             | close all other buffers           |
| :wa                               | save all buffers                  |
|                                   |                                   |
| SPC g                             | open Git status                   |
| SPC h                             | Git blame                         |
| SPC l                             | Git log                           |
| :Push                             | Git push current branch           |
|                                   |                                   |
| CMD+r                             | refactoring: rename               |
| CMD+m                             | refactoring: references           |
| CMD+Enter                         | refactoring: autofix              |
|                                   |                                   |
| CMD+n                             | open notes.org file               |
|                                   |                                   |
| zc                                | fold section                      |
| zo                                | open section                      |
|                                   |                                   |
| mi                                | insert bookmark                   |
| mm                                | toggle bookmark                   |
| ma                                | show all bookmarks                |
|                                   |                                   |
| SPC z                             | send Vim to background            |


## Git status mappings (after SPC g)

| Command | Action                                                      |
| ------- | ----------------------------------------------------------- |
| s       | stage file under cursor                                     |
| u       | unstage file under cursor                                   |
| cc      | commit changes                                              |
| ca      | commit changes with amend                                   |
| ce      | commit changes with amend without editing of commit message |


## Terminal aliases for Node.js

| Alias | Action                                  |
|-------|-----------------------------------------|
| b     | build project                           |
| u     | run unit tests                          |
| ud    | debug unit tests                        |
| e     | run e2e tests                           |
| ed    | debug e2e tests                         |
| a     | build project, run all unit & e2e tests |


## Debugging

1. Type `debugger;` in your code to put a breakpoint.
2. Open Chrome and type `chrome://inspect` then click `Open dedicated DevTools for Node`.
3. Run `du` or `de`. If need to restart tests just restart the command in terminal again.
