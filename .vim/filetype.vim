"===============================================================================
" my filetype file
" Author: Qijian Zhang
" Date: 2020-01-04
"===============================================================================
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.sad setfiletype sad
augroup END
