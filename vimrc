" 1. Init plugins
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" common
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" Git integration (I need git blame only: everything else I usually do in
" terminal)
Plug 'tpope/vim-fugitive'
" testing
Plug 'janko-m/vim-test'
" markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Initialize plugin system
call plug#end()
" End of init plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 2. Keyboard config
" Support for Russian keyboard
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
" Copy to/from clipboard (works only for OS X) http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  set clipboard^=unnamed
  set clipboard^=unnamedplus"
endif
" End of keyboard config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 3. General config
" always show line numbers
set number
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
syntax on
filetype on
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin on
" save automatically when text is changed
set updatetime=200
autocmd CursorHold * silent! update

set autoread
autocmd CursorHold * checktime

au BufNewFile,BufRead Jenkinsfile setf groovy
" End of general config

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 4. Plugin configs
" NERDTree config
let NERDTreeIgnore = ['node_modules', 'dist']
let NERDTreeQuitOnOpen = 1 " close NERDTree after opening a file
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1 " don't show help; you can press ? to call it
let g:NERDTreeWinSize = 45

" AirLine config
let g:airline#extensions#tabline#enabled = 0 " don't show buffers as tabs
let g:airline_theme='silver' " set AirLine color theme
let g:airline#extensions#tabline#fnamemod = ':t' " show only file names in tabs

" Markdown config
let g:vim_markdown_folding_disabled = 1

" Test config
let g:test#javascript#jest#file_pattern = 'test/.*\.js$'
let test#javascript#jest#options = {
  \ 'all':   '--forceExit',
\}

" COC extensions (also available: 'coc-go')
let g:coc_global_extensions = ['coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-phpls']

" Prettier config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

" Telescope config
lua <<EOF
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "dist" },
    preview = false,
    mappings = {
      i = {
        ["<esc>"] = actions.close
      }
    }
  },
  pickers = {
    find_files = {
      theme = "ivy"
    },
    live_grep = {
      theme = "ivy"
    },
    oldfiles = {
      theme = "ivy"
    },
    buffers = {
      theme = "ivy"
    },
    git_branches = {
      theme = "ivy"
    },
  }
}
EOF

" End of plugin configs

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 5. Key bindings
" Faster line movements
nnoremap J 10j
nnoremap K 10k
vnoremap J 10j
vnoremap K 10k
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

nmap <leader><Leader> <cmd>Telescope find_files<cr>
nmap <Leader>f <cmd>Telescope live_grep<cr>
nmap <Leader>o <cmd>Telescope oldfiles<cr>
nmap <Leader>, <cmd>Telescope buffers<cr>

nmap <Leader>d :bd<CR>
nmap <Leader>z :sus<CR>

nmap <Leader>wc :close<CR>
nmap <Leader>wm :only<CR>
nmap <Leader>ww <C-W>w
nmap <Leader>we :vsplit<CR>
nmap <Leader>ws :split<CR>

nmap <C-l> :set invnumber<CR>

" Git keybindings
nmap <Leader>gg :Git<CR>
nmap <Leader>gB :Git blame<CR>

" Testing key bindings
nmap <Leader>y :TestNearest<CR>

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <Leader>rr <Plug>(coc-rename)
nmap <Leader>rm <Plug>(coc-references)
nmap <Leader>ru <Plug>(coc-format)
nmap <Leader>rf :CocFix<CR>

" Vimwiki
nmap <Leader>nt :VimwikiIndex<CR>
nmap <Leader>t :VimwikiToggleListItem<CR>
autocmd FileType vimwiki nnoremap <buffer> gd :VimwikiFollowLink<CR>

" End of key bindings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 6. My color scheme

" enable 256 colors
set t_Co=256
set background=light
" use :hi to show current colors
hi Normal      ctermfg=0 ctermbg=251
hi Pmenu       ctermfg=0 ctermbg=252
hi Visual      ctermbg=254
hi Search      ctermbg=254
hi PreProc     ctermfg=0
hi EndOfBuffer ctermfg=246
hi Type        ctermfg=18
hi Special     ctermfg=18
hi Statement   ctermfg=18
hi Constant    ctermfg=0
hi Character   ctermfg=0
hi Function    ctermfg=0
hi Define      ctermfg=0
hi Keyword     ctermfg=18
hi Identifier  ctermfg=18
hi Comment     ctermfg=243
hi String      ctermfg=28
hi Number      ctermfg=19
hi Boolean     ctermfg=4
hi Underlined  ctermfg=19
hi Title       ctermfg=22
hi Folded      ctermfg=0 ctermbg=249
hi LineNr      ctermfg=248
hi diffAdded   ctermfg=254 ctermbg=108
hi diffRemoved ctermfg=254 ctermbg=167

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
