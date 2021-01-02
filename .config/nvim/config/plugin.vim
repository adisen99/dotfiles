" Plugins usign vim-plug
call plug#begin('~/.vim/plugged')

" Functionality
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
"Plug 'lazywei/vim-matlab'
"Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
Plug 'wincent/pinnacle'

" Themes and colors
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'chriskempson/base16-vim'
Plug 'chuling/equinusocio-material.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Miscellaneous
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/indentpython.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'

" Easy Escape
Plug 'zhou13/vim-easyescape'

call plug#end()
