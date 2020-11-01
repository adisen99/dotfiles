set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required
set shell=sh "setting made for nerdtree-git-plugin to work

" Plugins usign vim-plug
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
"Plug 'lazywei/vim-matlab'
"Plug 'vim-syntastic/syntastic'
Plug 'chrisbra/Colorizer'
Plug 'wincent/pinnacle'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'chriskempson/base16-vim'
Plug 'chuling/equinusocio-material.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' |
            "\ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/indentpython.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

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

" Colorchemes

"let ayucolor ="dark"
"let ayucolor ="mirage"
"let ayucolor ="light"
"colorscheme ayu

" IndentLine {{
let g:indentLine_char = '┊'
let g:indentLine_first_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1
" }}

"let base16colorspace=256
"colorscheme base16-default-dark

"colorscheme tomorrow-night-bright

let g:codedark_conservative = 0
colorscheme codedark

" use a different style
" valid values: 'default' (default), 'darker', 'pure'
"let g:equinusocio_material_style = 'darker'

" less bright
" which means some colors will be modified by this formula:
" (r, g, b) -> ( max(r - less, 0), max(g - less, 0), max(b - less, 0) )
"let g:equinusocio_material_less = 50

" make vertsplit invisible (visible by default) (default 0)
" if style == 'pure', then the vertsplit is always visible
"let g:equinusocio_material_hide_vertsplit = 1

" parentheses improved (default 0)
" enabling this option with 'luochen1990/rainbow' installed is not encouraged
" because this option and 'luochen1990/rainbow' will registry conflicting events
" in summary:
" 1. no 'luochen1990/rainbow' installed, no parentheses improved: nothing to do (default 0)
" 2. no 'luochen1990/rainbow' installed, want built-in parentheses improved: set to 1
" 3. 'luochen1990/rainbow' installed: nothing to do (default 0)
"let g:equinusocio_material_bracket_improved = 1

" use a better vertsplit char
"set fillchars+=vert:│

"colorscheme equinusocio_material

"Fix transparent background in Vim/ Neovim: 
"hi! Normal ctermbg=NONE guibg=NONE 
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Highlight Italicize comments in vim using pinnacle function
execute 'highlight Comment ' . pinnacle#italicize('Comment')

" Coc Config

let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-python',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-clangd',
	\ 'coc-julia',
	\ 'coc-markdownlint',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
	\ 'coc-json',
    \ 'coc-toml',
    \ 'coc-texlab',
    \ 'coc-explorer',
	\ ]

" from readme
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <expr><C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<Right>"
inoremap <expr><C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<Left>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" syntastic settings
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_tex_checkers = ['lacheck', 'text/language_check']

" Vim Airline Settings

let g:airline_theme='base16_vim'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 0

" COC Explorer
nmap <space>e :CocCommand explorer<CR>
"nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

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
