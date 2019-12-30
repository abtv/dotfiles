" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" common
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript' }
" GraphQL
Plug 'jparise/vim-graphql'
" go
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'for': 'go' }
" html
Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript'] }
Plug 'tpope/vim-haml', { 'for': 'haml'}
Plug 'mustache/vim-mustache-handlebars'
" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" python
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }
" toml
Plug 'cespare/vim-toml', { 'for': 'toml' }
" testing
Plug 'janko-m/vim-test'
" don't lose window splits when kill a buffer
Plug 'qpkorr/vim-bufkill'
" navigation
Plug 'easymotion/vim-easymotion'

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

" always show status line
set laststatus=2
" status line should have file path, row numbers, column number, file type
set statusline=[%f][%2lR/%2vC][%LR]%y

let g:vim_markdown_folding_disabled = 1

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_match_window = 'min:4,max:50'
let NERDTreeIgnore = ['node_modules', 'dist']
let g:test#javascript#jest#file_pattern = 'test/.*\.js$'

" json files patch
autocmd BufNewFile,BufRead *.json set filetype=javascript

" save automatically when text is changed
set updatetime=200
au CursorHold * silent! update

" custom keybindings
let mapleader = "\<Space>"
"nmap <Leader>p :CtrlP<CR>
nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>f :Ag 
nmap <Leader>qq :q<CR>
nmap <Leader>q! :q!<CR>
nmap <Leader>q1 :q!<CR>
nmap <Leader>wm :only<CR>
nmap <Leader>ww <C-W>w
nmap <Leader>we :vsplit<CR>
nmap <Leader>ws :split<CR>
nmap <Leader>b :buffers<CR>
"delete a buffer, but don't lose a window
nmap <Leader>d :BD<CR>
nmap <Leader>k :bnext<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>gl :Gpull<CR>
nmap <Leader>t :TestNearest<CR>
" ctrl + movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
"faster line movements
nnoremap J 7j
nnoremap K 7k
vnoremap J 7j
vnoremap K 7k
" turn off linewise keys (normally, the `j' and `k' keys move the cursor down one entire line; useful with line wrapping)
nmap j gj
nmap k gk
" center scroll vertically
"set scrolloff=999

" enable 256 colors
set t_Co=256
" choose color scheme
colorscheme delek
" enable syntax highlighting
syntax enable
" customize colors
hi Comment    term=none  cterm=none    ctermfg=darkgray
hi StatusLine ctermbg=248 ctermfg=white
hi StatusLineNC ctermbg=248 ctermfg=white
