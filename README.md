# My configs

## Key principles

1. do as much as possible without a mouse

2. most used hotkeys must be pressed as a key with a modifier in one keystroke

  - Good: Cmd+j (one keystroke)

  - Bad: Space then j (two keystrokes)

3. switch between applications with hotkeys and don't use window animations

4. development environment shouldn't consume a lot of CPU. It's useful when using a laptop on a battery.


## Tools

| Tool      | Usage                         |
|-----------|-------------------------------|
| Alacritty | Terminal emulator             |
| Tmux      | Terminal multiplexer          |
| NeoVim    | Code and text editor with LSP |
| Tig       | Git pager                     |


## Setup

1. Install `brew`

2. Install `oh-my-zsh`

3. Clone the repo to ~/dotfiles

4. Run `install_packages.sh`

5. Run `install_configs.sh`

6. Download and install JebBrains Mono font https://www.jetbrains.com/ru-ru/lp/mono/#how-to-install


## MacOS settings

1. Don't open apps in fullscreen mode and to switch between them immediately without animations.

2. Map CapsLock to Control.


## Tmux

| Command | Action                                                                                          |
|---------|-------------------------------------------------------------------------------------------------|
| Cmd-t   | create a new window                                                                             |
| Cmd-w   | close current window (or you can use C-d)                                                       |
| Cmd-[   | go to the left window                                                                           |
| Cmd-]   | go to the right window                                                                          |
| Cmd-f   | enter copy mode (use q or Enter to exit) and you can use vi movements (hjkl C-d C-u) and search |


## Git

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

| Command                           | Action                  |
| --------------------------------- | ----------------------  |
| CMD f                             | grep in files           |
| CMD ;                             | search in file names    |
| CMD ,                             | show open buffers       |
| CMD .                             | show recent files       |
| SPC z                             | send Vim to background  |
| SPC s                             | save current buffers    |
| SPC d                             | close current buffer    |
| SPC g                             | open Git status         |
| SPC h                             | Git blame               |
| SPC l                             | Git log                 |
| zc                                | fold section            |
| zo                                | open section            |
| SPC n                             | open VimWiki index page |
| SPC t                             | toggle a VimWiki task   |

## Git status mappings (after SPC g)

| Command | Action                                                      |
| ------- | ----------------------------------------------------------- |
| s       | stage file under cursor                                     |
| u       | unstage file under cursor                                   |
| cc      | commit changes                                              |
| ca      | commit changes with amend                                   |
| ce      | commit changes with amend without editing of commit message |

## Emacs mappings

| Command                           | Action                                |
| --------------------------------- | ------------------------------------- |
| SPC f f (SPC .)                   | find file                             |
| SPC f r                           | find recent file                      |
| SPC f s                           | safe file                             |
| SPC f p                           | look at the folder with Emacs configs |
| SPC o p                           | toggle Treemacs                       |
| SPC b b (SPC ,)                   | show list of buffers                  |
| SPC b d                           | delete current buffer                 |
| SPC b n (SPC b ])                 | select next buffer                    |
| SPC b p (SPC b [)                 | select previous buffer                |
| SPC s p                           | search text in project                |
| SPC s r                           | jump to mark                          |
| SPC s j                           | jump list                             |
| SPC s m (SPC RET)                 | jump to bookmark                      |
| SPC n f                           | find in notes                         |
| SPC g g                           | Magit status                          |
| SPC g b                           | Magit switch branch                   |
| SPC g B                           | Magit blame                           |
| SPC g L                           | Magit buffer log                      |
| SPC g [                           | Jump to previous hunk                 |
| SPC g ]                           | Jump to next hunk                     |
| SPC h t                           | load color theme                      |
| SPC h v                           | describe variable                     |
| SPC h k                           | describe key                          |
| SPC t l                           | toggle line number                    |
| SPC w m m                         | maximize window with the buffer       |
| SPC w w                           | switch to next window                 |
| H                                 | Move cursor to top line in window     |
| M                                 | Move cursor to middle line in window  |
| L                                 | Move cursor to bottom line in window  |


## Magit status mappings (after pressing SPC g g)

| Command                           | Action                                |
| --------------------------------- | ------------------------------------- |
| ?                                 | show help                             |
| q                                 | quit Magit status                     |
| s                                 | stage current change                  |
| S                                 | stage all changes                     |
| c c                               | commit                                |
| c a                               | commit with amend                     |
| l l                               | show Git log                          |
