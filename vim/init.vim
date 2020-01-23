" I. Init plugins
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" common
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
" testing
Plug 'janko-m/vim-test'
" GraphQL
Plug 'jparise/vim-graphql'
" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Initialize plugin system
call plug#end()
" End of init plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" II. Keyboard config
" Support for Russian keyboard
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
" works only for OS X
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  set clipboard^=unnamed
  set clipboard^=unnamedplus"
endif
" End of keyboard config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" III. General config
" don't show intro message
set shortmess+=I
" no need to be compatible with some old stuff
set nocompatible
" no bells
set noeb vb t_vb=
" don't create swap file
set noswapfile
" don't create backup file
set nobackup
" set dash as a keyword (useful for Clojure)
set isk+=-
" split horizontal window to the right of the current window
set splitright
" split vertical window to the bottow of the current window
set splitbelow
" status line should have file path, row numbers, column number, total rows, file type
set statusline=[%f][%3lR/%3vC][%LR]%y
syntax enable
filetype on
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin on
" enable 256 colors
set t_Co=256
colorscheme desert
hi Pmenu ctermbg=gray guibg=gray
" open JSON files as JavaScript files
autocmd BufNewFile,BufRead *.json set filetype=javascript
" save automatically when text is changed
set updatetime=200
autocmd CursorHold * silent! update
" End of general config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" IV. Plugin configs
" NERDTree config
let NERDTreeIgnore = ['node_modules', 'dist']
let NERDTreeQuitOnOpen = 1 " close NERDTree after opening a file
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1 " don't show help; you can press ? to call it
" CtrlP config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', '[ $PWD = $HOME ] && echo "Too many files" || find %s -type f']
let g:ctrlp_match_window = 'min:4,max:25'
" Deoplete config
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around']})
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-n> deoplete#manual_complete()
" Markdown config
let g:vim_markdown_folding_disabled = 1
" Test config
let g:test#javascript#jest#file_pattern = 'test/.*\.js$'
" Autoformat config
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>'
let g:ale_sign_warning = '!'
" End of plugin configs

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" V. Key bindings
" Faster line movements
nnoremap J 7j
nnoremap K 7k
vnoremap J 7j
vnoremap K 7k
" Turn off linewise keys (normally, the `j' and `k' keys move the cursor down one entire line; useful with line wrapping)
nmap j gj
nmap k gk
" General key bindings
let mapleader = "\<Space>"
nmap <C-q> :q<CR>
nmap <C-o> :NERDTreeToggle<CR>
nmap <C-l> :NERDTreeFind<CR>
nmap <C-f> :Ag<CR>
nmap <C-j> :bprevious<CR>
nmap <C-k> :bnext<CR>
nmap <Leader>d :bd<CR>
nmap <C-h> :noh<CR>
nmap <Leader>f :Ag
nmap <Leader>qq :q<CR>
nmap <Leader>q! :q!<CR>
nmap <Leader>q1 :q!<CR>
nmap <Leader>wm :only<CR>
nmap <Leader>ww <C-W>w
nmap <Leader>we :vsplit<CR>
nmap <Leader>ws :split<CR>
nmap <Leader>b :buffers<CR>
" Git keybindings
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :Gpull<CR>
" Testing key bindings
nmap <C-y> :TestNearest<CR>
" End of key bindings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
