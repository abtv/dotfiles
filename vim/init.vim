"I. Init plugins
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" common
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'cormacrelf/vim-colors-github'
" Git integration
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-rhubarb'
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
"
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
colorscheme github
let g:airline_theme = "github"
let g:lightline = { 'colorscheme': 'github' }
let g:github_colors_soft = 1
set background=light
hi Normal ctermfg=black ctermbg=252
hi Pmenu ctermbg=252 ctermfg=black
hi diffAdded   ctermfg=254 ctermbg=108
hi diffRemoved ctermfg=254 ctermbg=167
" save automatically when text is changed
set updatetime=200
autocmd CursorHold * silent! update

set autoread
autocmd CursorHold * checktime
" End of general config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" IV. Plugin configs
" NERDTree config
let NERDTreeIgnore = ['node_modules', 'dist']
let NERDTreeQuitOnOpen = 1 " close NERDTree after opening a file
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1 " don't show help; you can press ? to call it
let g:NERDTreeWinSize=45
" Airline config
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='silver'
" Nerdcommenteer config

" CtrlP config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', '[ $PWD = $HOME ] && echo "Too many files" || find %s -type f']
let g:ctrlp_match_window = 'min:4,max:25'

" Markdown config
let g:vim_markdown_folding_disabled = 1

" Test config
let g:test#javascript#jest#file_pattern = 'test/.*\.js$'
let test#javascript#jest#options = {
  \ 'all':   '--forceExit',
\}

" COC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-omnisharp']
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Prettier config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

" apexcode FileType Auto commands{{{
augroup filetype_apexcode
  :autocmd!
  :autocmd FileType apexcode* :setlocal shiftwidth=4 tabstop=4 foldmethod=indent foldlevel=0 foldlevelstart=0
augroup END
" End apex FileType Auto commands}}}
"
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
nmap <C-q> :q<CR>
nmap <C-j> :bprevious<CR>
nmap <C-k> :bnext<CR>
nmap <C-h> :noh<CR>

let mapleader = "\<Space>"
nmap <Leader>s :w<CR>
nmap <Leader>qq :q<CR>
nmap <Leader>q! :q!<CR>
nmap <Leader>q1 :q!<CR>

nmap <Leader>p :NERDTreeToggle<CR>
" there is a deliberate space after :Ag below:
nmap <Leader>f :Ag 
let g:ctrlp_map = '<Leader><Leader>'

nmap <Leader>d :bd<CR>
nmap <Leader>bb :buffers<CR>
nmap <Leader>, :buffers<CR>

nmap <Leader>wc :close<CR>
nmap <Leader>wm :only<CR>
nmap <Leader>ww <C-W>w
nmap <Leader>we :vsplit<CR>
nmap <Leader>ws :split<CR>

nmap <Leader>l :set invnumber<CR>

nmap <Leader>j :GV<CR>
nmap <Leader>k :GV!<CR>

" NerdCommenter key bindings
let g:NERDCreateDefaultMappings = 0
vmap <Leader>c :call NERDComment(0,"toggle")<CR>

" Git keybindings
nmap <Leader>gB :Gblame<CR>
nmap <Leader>gg :Gstatus<CR>
nmap <Leader>gm :Gmove 
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :Gpull<CR>
" Testing key bindings
nmap <Leader>y :TestNearest<CR>
" End of key bindings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
