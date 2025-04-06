# My configs

## Setup

1. Install [brew](https://brew.sh).

2. Install [oh-my-zsh](https://ohmyz.sh).

3. Clone the repo to `~/dotfiles`.

4. Run `install.sh`.

## Tools

| Tool            | Usage              |
|-----------------|--------------------|
| Karabiner       | Better keyboard    |
| Ghostty         | Terminal emulator  |
| Zed             | Code editor        |
| neovim          | Text editor        |
| tig             | Git pager          |
| k9s             | Kubernetes control |
| k6              | Load testing       |


## Shortcuts

| Command  | Action            |
|----------|-------------------|
| Cmd-1    | Switch to Safari  |
| Cmd-2    | Switch to Ghostty |
| Cmd-3    | Switch to Slack   |
| Cmd-9    | Switch to Zed     |
| Cmd-0    | Switch to LogSeq  |
| Cmd-Spc  | Switch language   |
| Ctrl-Spc | Open Spotlight    |


## Important decisions on MacOS

### 1. Increase a key repeat rate

I'm a touch-typist and I don't like the standard MacOS key repeat rate. `install.sh` script will increase the keyboard repeat rate.


### 2. Map CapsLock to Control

It's easier to press CapsLock than Control.


### 3. Don't open a window in a full-screen mode

MacOS uses an animation when switches between full-screen windows. These animations are distracting me and that's why I don't open a window in a  full-screen mode.

## Git aliases

| Command | Action                   |
|---------|--------------------------|
| g       | git log with tig         |
| glol    | git log                  |
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

| Command | Action                            |
|---------|-----------------------------------|
| SPC SPC | Choose a file                     |
| SPC s   | Save current buffer               |
| SPC q   | Quit Vim                          |
| SPC d   | Delete current buffer             |
| SPC w s | Split current buffer horizontally |
| SPC w v | Split current buffer vertically   |
| SPC w m | Maximize current window           |
| SPC w w | Go to the next window             |
| SPC z   | Send Vim to background            |
| Ctrl-l  | Toggle line numbers               |
| Ctrl-h  | No highlight                      |
| zc      | Fold section                      |
| zo      | Open section                      |
