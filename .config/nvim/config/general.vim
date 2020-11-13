set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required
set shell=sh "setting made for nerdtree-git-plugin to work

" General vim stuff
syntax on
set nu rnu

" No Arrow keys
map <Down> <NOP>
map <Up> <NOP>
map <Right> <NOP>
map <Left> <NOP>

nnoremap <A-k> :resize +2<CR> 
nnoremap <A-j> :resize -2<CR>
nnoremap <A-h> :vertical resize +2<CR>
nnoremap <A-l> :vertical resize -2<CR>

set background=dark
set expandtab
set mouse=a
"set paste
set t_Co=256
set autoindent
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4

" Syntastic statusline options

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

set clipboard+=unnamedplus
set smartcase
set incsearch
"set spell
set spelllang=en_gb
set cursorline
set termguicolors

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = ' '

" Remapping and Shortcuts
" Replace all is aliased to S
nnoremap S :%s//g<Left><Left>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>z :sp<CR>
nnoremap <leader>b :buffers<CR>:b
nnoremap <silent>gb :bnext<CR>
nnoremap <leader>3 :ColorToggle<CR>
nnoremap <C-s> :source %<CR>

" Opening Terminal in Vim
nnoremap <A-t> :edit term://zsh<CR>
" Terminal Mode mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <leader>h <C-\><C-N><C-w>h
tnoremap <leader>j <C-\><C-N><C-w>j
tnoremap <leader>k <C-\><C-N><C-w>k
tnoremap <leader>l <C-\><C-N><C-w>l
