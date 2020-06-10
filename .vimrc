set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'chrisbra/colorizer'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'preservim/nerdcommenter'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" General vim stuff
syntax on
set number relativenumber
set nu rnu

" No Arrow keys
map <Down> <NOP>
map <Up> <NOP>
map <Right> <NOP>
map <Left> <NOP>

set background=dark
set expandtab
set paste
set t_Co=256
set autoindent
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set clipboard+=unnamedplus
set smartcase
set incsearch
set spelllang=en_us
set cursorline
let mapleader = " "

" Colorchemes

colorscheme moriarty 

" my other favourite colorschemes are
" minimalist
" molokai_dark
" nature

" Remapping and Shortcuts
" Replace all is aliased to S
nnoremap S :%s//g<Left><Left>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :sp<CR>
nnoremap <Leader>b :buffers<CR>:buffer

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

" Vim Airline Settings

let g:airline_theme='base16_google'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Nerdtree Settings

map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
" Automatically start nerdtree if no file is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" and automatically start nerdtree on openning up a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Close vim if nerdtree is the only instance open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
