" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" common
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim', { 'on': 'Ag' }

" testing
Plug 'janko-m/vim-test'

" GraphQL
Plug 'jparise/vim-graphql'

" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

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

set nocompatible  " no need to be compatible with some old stuff
set noeb vb t_vb= " no bells
set noswapfile
set nobackup

set splitright " split horizontal window to the right of the current window
set splitbelow " split vertical window to the bottow of the current window

if has("autocmd")
  filetype on
  filetype indent on
  set tabstop=2
  set shiftwidth=2
  set expandtab
  filetype plugin on
endif

" set dash as a keyword (useful for Clojure)
set isk+=-

" status line should have file path, row numbers, column number, file type
set statusline=[%f][%3lR/%3vC][%LR]%y

let g:vim_markdown_folding_disabled = 1

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_match_window = 'min:4,max:25'
let NERDTreeIgnore = ['node_modules', 'dist']
let g:test#javascript#jest#file_pattern = 'test/.*\.js$'

" json files patch
autocmd BufNewFile,BufRead *.json set filetype=javascript

" save automatically when text is changed
set updatetime=200
au CursorHold * silent! update

" ide key bindings
nmap <C-q> :q<CR>
nmap <C-o> :NERDTreeToggle<CR>
nmap <C-f> :Ag<CR>
nmap <C-j> :bprevious<CR>
nmap <C-k> :bnext<CR>
let mapleader = "\<Space>"
nmap <Leader>f :Ag
nmap <Leader>d :bd<CR>

" testing key bindings
nmap <C-y> :TestNearest<CR>

" custom keybindings
nmap <Leader>qq :q<CR>
nmap <Leader>q! :q!<CR>
nmap <Leader>q1 :q!<CR>
nmap <Leader>wm :only<CR>
nmap <Leader>ww <C-W>w
nmap <Leader>we :vsplit<CR>
nmap <Leader>ws :split<CR>
nmap <Leader>b :buffers<CR>

" delete a buffer, but don't lose a window
nmap <Leader>k :bnext<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :Gpull<CR>

" faster line movements
nnoremap J 7j
nnoremap K 7k
vnoremap J 7j
vnoremap K 7k

" turn off linewise keys (normally, the `j' and `k' keys move the cursor down one entire line; useful with line wrapping)
nmap j gj
nmap k gk

set t_Co=256 " enable 256 colors
colorscheme desert
syntax enable

set shortmess+=I
