" 1. Init plugins
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Plugins
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'tpope/vim-fugitive'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jiangmiao/auto-pairs'
Plug 'numToStr/Comment.nvim'
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
set nofoldenable
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
let g:NERDTreeWinSize = 60

" AirLine config
let g:airline#extensions#tabline#enabled = 1 " show buffers as tabs
let g:airline_theme='silver' " set AirLine color theme
let g:airline#extensions#tabline#fnamemod = ':t' " show only file names in tabs

" Markdown config
let g:vim_markdown_folding_disabled = 1

" COC extensions 
let g:coc_global_extensions = ['coc-tsserver', 'coc-html', 'coc-css', 'coc-json', 'coc-phpls', 'coc-go']

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
-- fzf must be called after telescope.setup function call
require('telescope').load_extension('fzf')
EOF

" Treesitter config
lua <<EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = { "javascript", "typescript", "lua", "go", "php" },
  highlight = { enable = true },
  indent = { enable = true }
}
EOF

" Comment config
lua << EOF
require('Comment').setup()
EOF

" Fugitive config
command -nargs=* Log Git! log --graph --pretty=format:'%h - %ad - %s - <%an>' --date=format:'%Y-%m-%d %H:%M' --abbrev-commit <args>
command -nargs=* Push Git! push origin head <args>

" Org mode config
lua << EOF
-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
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
nmap <C-h> :noh<CR>
nmap <C-l> :set invnumber<CR>

let mapleader = "\<Space>"
nmap <Leader>s :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>p :NERDTreeToggle<CR>
nmap <Leader>P :NERDTreeFind<CR>

nmap <Leader><Leader> <cmd>Telescope find_files<cr>
nmap <Leader>; <cmd>Telescope find_files<cr>
nmap <Leader>f <cmd>Telescope live_grep<cr>
nmap <Leader>. <cmd>Telescope oldfiles<cr>

nmap <Leader>d :bd<CR>
nmap <Leader>x :w <bar> %bd <bar> e# <bar> bd# <CR><CR>
nmap <Leader>z :sus<CR>

nmap <Leader>wc :close<CR>
nmap <Leader>wm :only<CR>
nmap <Leader>ww <C-W>w
nmap <Leader>we :vsplit<CR>
nmap <Leader>ws :split<CR>

nmap <Leader>/ gcc
vmap <Leader>/ gc

" Git keybindings
nmap <Leader>g :Git<cr>:only<cr>
nmap <Leader>h :Git blame --date=short <cr>
nmap <Leader>l :Log<cr><C-W>w:only<cr>

" CoC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <Leader>r <Plug>(coc-rename)
nmap <Leader>m <Plug>(coc-references)
nmap <Leader><CR> :CocFix<CR>

" Notes
nmap <Leader>n :e ~/work/notes/notes.txt<CR>

" Map buffer switcher
nmap [[ :bprevious<CR>
nmap ]] :bnext<CR>

nnoremap <silent><nowait> [ [[
nnoremap <silent><nowait> ] ]]

function! MakeBracketMaps()
    nnoremap <silent><nowait><buffer> [ :<c-u>exe 'normal '.v:count.'[['<cr>
    nnoremap <silent><nowait><buffer> ] :<c-u>exe 'normal '.v:count.']]'<cr>
endfunction

augroup bracketmaps
    autocmd!
    autocmd FileType * call MakeBracketMaps()
augroup END

" End of key bindings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 6. My color scheme
set t_Co=256 " enable 256 colors
let g:PaperColor_Theme_Options = {
\   'theme': {
\     'default': {
\       'transparent_background': 1
\     }
\   }
\ }
set background=light
colorscheme PaperColor

hi LineNr ctermfg=243
hi Comment ctermfg=243

hi Operator ctermfg=7
hi Delimiter ctermfg=7
hi Keyword ctermfg=18
hi String ctermfg=28
hi Function ctermfg=100
hi Identifier ctermfg=54
hi Constant ctermfg=7

hi Include ctermfg=18
hi Typedef ctermfg=88
hi Exception ctermfg=18
hi Statement ctermfg=88 cterm=none
hi Conditional ctermfg=18 cterm=none
hi Repeat ctermfg=18 cterm=none

hi Type ctermfg=7 cterm=none
hi Number ctermfg=21 cterm=none
hi Boolean cterm=none

hi Typedef cterm=none
hi Structure cterm=none
hi StorageClass cterm=none
hi typescriptLabel cterm=none

hi NERDTreeDir ctermfg=25 cterm=none 
hi NERDTreeDirSlash ctermfg=25 cterm=none
hi NERDTreeOpenable ctermfg=25 cterm=none
hi NERDTreeClosable ctermfg=25 cterm=none
hi NERDTreeHelpKey ctermfg=28
hi NERDTreeHelpCommand ctermfg=28
hi VertSplit ctermbg=NONE
hi VertSplit ctermfg=NONE

hi Title cterm=bold ctermfg=7
hi Folded cterm=bold ctermfg=254 ctermbg=66

" Set font size
set guifont=JetBrains\ Mono:h14
