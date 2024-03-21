" better clipboard
set clipboard+=unnamed

" faster movements
nnoremap K 10k
nnoremap J 10j
vnoremap K 10k
vnoremap J 10j

let mapleader = " "

" file system
nnoremap <leader><leader> :Ntree<CR>

" basic
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>z :sus<CR>
nnoremap <C-l> :set invnumber<CR>
nnoremap <C-h> :noh<CR>

" windows
nnoremap <Leader>wc :close<CR>
nnoremap <Leader>wm :only<CR>
nnoremap <Leader>ww <C-W>w
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>ws :split<CR>

" IntelliJ
nnoremap <leader>r :action RecentFiles<CR>
nnoremap <leader>a :action ActivateDatabaseToolWindow<CR>
