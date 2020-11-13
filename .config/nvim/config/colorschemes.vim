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
