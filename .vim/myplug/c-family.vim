"===============================================================================
" My own C-Family file settings
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

set comments=:///,://

inoremap <buffer> <Leader>d #define 
inoremap <buffer> {<CR> {}<Esc>i<CR><Esc>O
inoremap <buffer> <Leader>m int main(int argc, const char *argv[])<CR>{}<Esc>i<CR><Esc>O
inoremap <buffer> <Leader>/ /*  */<Esc>2hi
inoremap <buffer> <Leader>fi for (size_t i = 0; i < n; i++) {<CR>}<Esc>k$Fn
inoremap <buffer> <Leader>fj for (size_t j = 0; j < n; j++) {<CR>}<Esc>k$Fn
inoremap <buffer> <Leader>fk for (size_t k = 0; k < n; k++) {<CR>}<Esc>k$Fn

