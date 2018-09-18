"===============================================================================
" My own C-Family file settings
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

inoremap <buffer> <Leader>d #define 
inoremap <buffer> {<CR> {}<Esc>i<CR><Esc>O
inoremap <buffer> <Leader>m int main(int argc, char *argv[])<CR>{}<Esc>i<CR><Esc>O
inoremap <buffer> <Leader>/ /*<CR>/<Esc>O
inoremap <buffer> <Leader>fi for (int i = 0; i < n; i++) {<CR>}<Esc>k$Fn
inoremap <buffer> <Leader>fj for (int j = 0; j < n; j++) {<CR>}<Esc>k$Fn
inoremap <buffer> <Leader>fk for (int k = 0; k < n; k++) {<CR>}<Esc>k$Fn

