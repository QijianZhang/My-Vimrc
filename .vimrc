"===============================================================================
" My own vimrc file
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

"===============================================================================
" Use Plug to load plugins
source ~/.vim/loadplugin.vim
"===============================================================================

"===============================================================================
" Some basic settings
source ~/.vim/basic.vim
"===============================================================================

"===============================================================================
" My own file type specified settings
"===============================================================================
if !exists("autocommands_loaded")
	let autocommands_loaded = 1

	" C
	au BufRead,BufNewFile *.c,*.h, source ~/.vim/myplug/c.vim

	" CPP
	au BufRead,BufNewFile *.cpp,*.cc,*.cxx,*.hxx,*.hpp,*.hh source ~/.vim/myplug/cpp.vim

	" Crystal
	au BufRead,BufNewFile *.cr source ~/.vim/myplug/crystal.vim
	
	" Markdown
	au BufRead,BufNewFile *.md source ~/.vim/myplug/markdown.vim

	" LaTeX
	au BufRead,BufNewFile *.tex source ~/.vim/myplug/latex.vim

	" Haskell
	au BufRead,BufNewFile *.hs source ~/.vim/myplug/haskell.vim
endif

