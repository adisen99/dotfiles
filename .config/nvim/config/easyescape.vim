let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>

" Disable in text and markdown files
autocmd FileType text,markdown call setbufvar(bufnr("%"), 'easyescape_disable', 1)
