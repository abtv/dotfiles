# My configs

## Setup

1. Install [brew](https://brew.sh).

2. Install [oh-my-zsh](https://ohmyz.sh).

3. Clone the repo to `~/dotfiles`.

4. Run `install.sh`.

## Tools

| Tool          | Usage                      |
|---------------|----------------------------|
| karabiner     | Better keyboard            |
| iterm2        | Terminal emulator          |
| neovim        | Text editor                |
| tig           | Git pager                  |
| IntelliJ Idea | Working notes              |
| PHPStorm      | IDE for TypeScript and PHP |
| Workflowy     | Task list                  |
| Postico       | Postgres client            |
| NoSQLBooster  | MongoDb client             |
| kubectl       | Kubernetes control         |


## Karabiner shortcuts

| Command   | Action                  |
|-----------|-------------------------|
| Cmd-1     | Switch to Safari        |
| Cmd-2     | Switch to iterm2        |
| Cmd-3     | Switch to Slack         |
| Cmd-4     | Switch to Postico       |
| Cmd-7     | Switch to IntelliJ      |
| Cmd-8     | Switch to NoSQLBooster  |
| Cmd-9     | Switch to PHPStorm      |
| Cmd-0     | Switch to Workflowy     |


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

| Command                           | Action                            |
| --------------------------------- | --------------------------------- |
| SPC q                             | quit Vim                          |
| SPC w                             | write current buffer              |
| SPC d                             | delete current buffer             |
| SPC w s                           | split current buffer horizontally |
| SPC w v                           | split current buffer vertically   |
| SPC w m                           | maximize current window           |
| SPC w w                           | go to the next window             |
| SPC z                             | send Vim to background            |
|                                   |                                   |
| zc                                | fold section                      |
| zo                                | open section                      |
