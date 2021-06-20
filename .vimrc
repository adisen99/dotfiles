set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" General vim stuff
syntax on
set nu rnu

" No Arrow keys
map <Down> <NOP>
map <Up> <NOP>
map <Right> <NOP>
map <Left> <NOP>

set background=dark
set expandtab
set paste
set autoindent
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set clipboard+=unnamedplus
set smartcase
set incsearch
set spell
set spelllang=en_gb

"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "

" Remapping and Shortcuts
" Replace all is aliased to S
nnoremap S :%s//g<Left><Left>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :sp<CR>
nnoremap <Leader>b :buffers<CR>:b
nnoremap <leader>3 :ColorToggle<CR>
