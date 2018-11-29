"===============================================================================
" My own C file settings
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

set ft=c
set cinoptions=:0

source ~/.vim/myplug/c-family.vim
inoremap <buffer> <Leader>i #include <.h><Esc>hhi
inoremap <buffer> <Leader>I #include ".h"<Esc>hhi
inoremap <buffer> <Leader>h #ifndef _H<CR>#define _H<CR><CR><CR><CR>#endif<Esc>ggf_i
inoremap <buffer> <Leader>s struct  {<CR>};<Esc>k$hi
inoremap <buffer> <Leader>u union  {<CR>};<Esc>k$hi
inoremap <buffer> <Leader>e enum  {<CR>};<Esc>k$hi
