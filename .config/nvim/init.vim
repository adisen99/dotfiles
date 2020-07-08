set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" Plugins usign vim-plug
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'lazywei/vim-matlab'
Plug 'vim-syntastic/syntastic'
Plug 'chrisbra/Colorizer'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/indentpython.vim'
Plug 'godlygeek/tabular'
Plug 'trusktr/seti.vim'
Plug 'tmsvg/pear-tree'

call plug#end()

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
"set spell
set spelllang=en_gb
set cursorline

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

" Colorchemes
let g:onedark_terminal_italics = 1
colorscheme onedark

" OneDark settings

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" YouCompleteMe settings

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']

" Vim Airline Settings

let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 0

" Nerdtree Settings

"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
" Automatically start nerdtree if no file is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" and automatically start nerdtree on openning up a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Close vim if nerdtree is the only instance open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
