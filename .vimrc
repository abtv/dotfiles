"no need to be compatible with some old stuff
set nocompatible
"no bells
set noeb vb t_vb=

"enable 256 colors
set t_Co=256
"choose color scheme
colorscheme slate
"enable syntax highlighting
syntax enable
"enable line numbers (set nonumber to disable it)
set number

if has("autocmd")
  filetype on
  filetype indent on
  set tabstop=2
  set shiftwidth=2
  set expandtab
  filetype plugin on
endif

set incsearch

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

