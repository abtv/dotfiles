The things which I use in Spacemacs.

## 1. Description

Languages support:

* Clojure
* Go
* Rust

Version control with `Magit`.

Project navigation with `Projectile`.


## 2. Main keybindings:

### Basic:

* SPC - leader key
* SPC : - run command
* SPC ' - open/close zsh


### Settings and help

* SPC f e d - open ~/.spacemacs file
* SPC h SPC - open help


### Buffers

* SPC TAB - last buffer
* SPC b b - list of opened/recent buffers
* SPC b d - kill the current buffer
* SPC b k - kill a buffer


### Buffer manipulation micro-state

* SPC b . - initiate micro-state, then:
* n - next buffer
* N - previous buffer
* K - kill current buffer


### Windows

* SPC w m - maximize/minimize window
* SPC w c - close window
* SPC w u - undo window layout
* SPC w U - redo window layout
* SPC w w - cycle and focus between windows
* SPC w R - rotate windows


### Window manipulation micro-state

* SPC w . - initiate micro-state, then:
* c - close window
* C - close other windows
* [ - shrink window horizontally
* ] - enlarge window horizontally
* { - shrink window vertically
* } - enlarge window vertically
* g - toggle golden-ration on/off
* h, j, k, l - go to window on the left, below, above, right
* H, J, K, L - move window to the left, bottom, top, right
* R - rotate windows


### Navigation

* SPC p f - helm-projectile-find-file
* SPC f t - neotree toggle
* SPC SPC - avy-go-to-word-or-subword1


### Themes

* SPC T h - helm themes
* SPC T n - next theme from (setq-default dotspacemacs-themes '(list-themes-here)) in your .spacemacs file


### Toggle

* SPC t n - on/off line numbers
* SPC t C p - highlight-parentheses-mode


### Magit

* SPC g s - magit-status
* SPC g l l - git log
* SPC g C - git checkout
* SPC g d u - git diff unstaged


### Clojure

* SPC m g g - go to definition (you need to run `cider-jack-in` first)
* SPC m g b - go back
* SPC m h h - cider doc
* SPC m h g - cider grimoir 

* SPC m e f - eval function at point
* SPC m e b - eval buffer

* SPC m t a - run all tests in namespace
* SPC m t t - run test at point
* SPC m t r - re-run test failures for namespace

* SPC m f b - reformat current buffer
* SPC m f l - realign current form


### Go

* SPC m h h - godoc at point
* SPC m g g - go jump to definition
* SPC m t p - run `go test` for the current package
* SPC m g a - jump to matching test file or back from test to code file
* SPC m i g - goto imports
* SPC m i a - add import
* SPC m i r - remove unused import


### Rust

* SPC m c c - compile project with Cargo
* SPC m c t - run tests with Cargo
* SPC m c x - execute the project with Cargo
* SPC m g g - go jump to definition 
* SPC m c C - remove build artifacts with Cargo


## 3. Language support

### Clojure language

Download and run script from http://leiningen.org .


### Go language

You need to do the following:

* add the following to your .zshrc file:
```
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT="/usr/lib/go"
```
* `sudo -E go get golang.org/x/tools/cmd/godoc`
* add `export PATH=/usr/lib/go/bin/:$PATH` to your .zshrc file


### Rust language

* install `cargo`
* run `cargo install racer`
* add `export PATH=/home/your_user_name/.cargo/bin/:$PATH` to your .zshrc file
* add `export RUST_SRC_PATH="/usr/local/src/rust/src"` to your .zshrc file


