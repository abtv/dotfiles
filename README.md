# My configs

## Key principles

1. do as much as possible without a mouse

2. switch between applications with hotkeys and don't use window animations

3. development environment shouldn't consume a lot of CPU. It's useful when using a laptop on a battery.

4. development environment should be cross-platform (MacOS and Linux)


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

| Command                           | Action                            |
| --------------------------------- | --------------------------------- |
| SPC SPC                           | search in file names              |
| SPC p                             | open project tree                 |
| SPC P                             | open current file in project tree |
| SPC f                             | grep in files                     |
| SPC ,                             | show open buffers                 |
| SPC .                             | show recent files                 |
| SPC /                             | toggle comment                    |
|                                   |                                   |
| SPC z                             | send Vim to background            |
|                                   |                                   |
| SPC s                             | save current buffer               |
| SPC d                             | close current buffer              |
| SPC x                             | close all other buffers           |
| :wa                               | save all buffers                  |
|                                   |                                   |
| SPC g                             | open Git status                   |
| SPC h                             | Git blame                         |
| SPC l                             | Git log                           |
| :Git push origin head             | Git push current branch           |
|                                   |                                   |
| SPC r r                           | refactoring: rename               |
| SPC r m                           | refactoring: references           |
| SPC r u                           | refactoring: autoformat           |
| SPC r f                           | refactoring: autofix              |
|                                   |                                   |
| SPC n                             | open VimWiki index page           |
| SPC t                             | toggle a VimWiki task             |
|                                   |                                   |
| zc                                | fold section                      |
| zo                                | open section                      |

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
