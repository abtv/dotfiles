" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" common
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
" c/c++
Plug 'Rip-Rip/clang_complete', { 'for': [ 'c', 'cpp' ] }
" clojure & clojurescript
Plug 'tpope/vim-fireplace', { 'for': ['clojure', 'clojurescript'] }
Plug 'guns/vim-clojure-static', { 'for': ['clojure', 'clojurescript'] }
Plug 'guns/vim-clojure-highlight', { 'for': ['clojure', 'clojurescript'] }
Plug 'vim-scripts/paredit.vim', { 'for': ['clojure', 'clojurescript'] }
" css/less/stylus/scss
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
" jade
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] }
" javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' }
Plug 'wizicer/vim-jison', { 'for': 'javascript' }
" go
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'for': 'go' }
" html
Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript'] }
Plug 'tpope/vim-haml', { 'for': 'haml'}
" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" python
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }
" ruby
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" rust
Plug 'wting/rust.vim', { 'for': 'rust' }
" toml
Plug 'cespare/vim-toml', { 'for': 'toml' }

" Initialize plugin system
call plug#end()

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
" works only for OS X
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  set clipboard^=unnamed
  set clipboard^=unnamedplus"
endif

set wildignore+=*.class
set wildignore+=*/target/*
set wildignore+=*/node_modules/*

" no need to be compatible with some old stuff
set nocompatible
" no bells
set noeb vb t_vb=
" no swap file
set noswapfile
" no backups
set nobackup

" split horizontal window to the right of the current window
set splitright
" split vertical window to the bottow of the current window
set splitbelow

" enable 256 colors
set t_Co=256
" choose color scheme
colorscheme gruvbox
set background=dark
" enable syntax highlighting
syntax enable
" enable line numbers (set nonumber to disable it)
set number

if has("autocmd")
  filetype on
  filetype indent on
  set tabstop=2
  set shiftwidth=2
  set expandtab
  filetype plugin on
endif

set path+=**
set wildmenu

"always show status line with file path, row numbers, column number, file type
set laststatus=2
set statusline=[%F][%2l/%LR][%2vC]%y

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

set isk+=-

"markdown files patch
autocmd BufNewFile,BufRead *.md set filetype=markdown

"json files patch
autocmd BufNewFile,BufRead *.json set filetype=javascript

"open files tree
map <F8> :Vex <CR>

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>