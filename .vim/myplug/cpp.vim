"===============================================================================
" My own C++ file settings
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

set ft=cpp

source ~/.vim/myplug/c-family.vim
inoremap <buffer> <Leader>i #include <><Esc>i
inoremap <buffer> <Leader>I #include ".hpp"<Esc>hhhhi
inoremap <buffer> <Leader>h #ifndef _HPP<CR>#define _HPP<CR><CR><CR><CR>#endif<Esc>ggf_i
inoremap <buffer> <Leader>C class  {<CR><BS>private:<CR><CR><BS>public:<CR><CR>}; // class <CR><Esc>kkkkkk$hha
inoremap <buffer> <Leader>T template <><Esc>i
inoremap <buffer> <Leader>N namespace  {<CR>} // namespace <Esc>k$hha
