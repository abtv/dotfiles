# My configs

## Setup

1. Install [brew](https://brew.sh).

2. Install [oh-my-zsh](https://ohmyz.sh).

3. Clone the repo to `~/dotfiles`.

4. Run `install.sh`.

## Tools

| Tool      | Usage                   |
|-----------|-------------------------|
| karabiner | Better keyboard         |
| iterm2    | Terminal emulator       |
| tig       | Git pager               |
| neovim    | Text editor             |
| PHPStorm  | IDE                     |
| IntelliJ  | Working notes           |
| kubectl   | Kubernetes control      |


## Karabiner shortcuts

| Command   | Action                  |
|-----------|-------------------------|
| Cmd-1     | Switch to Safari        |
| Cmd-2     | Switch to iterm2        |
| Cmd-3     | switch to Slack         |
| Cmd-4     | switch to Postico       |
| Cmd-7     | switch to IntelliJ Idea |
| Cmd-8     | switch to Dbeaver       |
| Cmd-9     | switch to PHPStorm      |
| Cmd-0     | switch to LogSeq        |


## Important decisions on MacOS

### 1. Reduced key repeat rate

I'm a touch-typist and I don't like standard MacOS repeat rate. `install.sh` script will increase keyboard repeat rate.


### 2. Map CapsLock to Control

It's easier to press CapsLock than Control.


### 3. Don't open a window in full-screen mode

MacOS uses an animation when switches between full-screen windows. These animations are distracting me and that's why I don't open a window full-screen.


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

| Command                           | Action                            |
| --------------------------------- | --------------------------------- |
| SPC q                             | quit Vim                          |
| SPC w                             | write current buffer              |
| SPC d                             | delete current buffer             |
| SPC w s                           | split current buffer horizontally |
| SPC w v                           | split current buffer vertically   |
| SPC w w                           | maximize current window           |
| SPC z                             | send Vim to background            |
|                                   |                                   |
| zc                                | fold section                      |
| zo                                | open section                      |
