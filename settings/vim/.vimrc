syntax on
set incsearch
set ignorecase
set smartcase
set number

" Key mappings
imap df <Esc>
noremap - $
nnoremap ; :

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
let g:loaded_matchparen= 0

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Enable use of the mouse for all modes
set mouse=a

set t_Co=256
colorscheme ir_black

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" recognize Gemfile
autocmd BufNewFile,BufRead Gemfile set filetype=ruby

filetype on
set nocompatible
set fileencoding=utf-8
set encoding=utf-8
set noswapfile