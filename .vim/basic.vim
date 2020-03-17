"===============================================================================
" Vim basic settings
" Author: Qijian Zhang
" Date: 2018-09-09
"===============================================================================

" Vim behavior
set belloff=all
filetype indent plugin on
set encoding=utf-8
set linebreak
set autochdir
set breakindent
set scrolloff=5
set sidescroll=12
set browsedir=current
set autoindent
set smartindent
set autowrite
set autoread
set history=5000
let g:tex_conceal="ad"
set backspace=start,indent
runtime ftplugin/man.vim
set foldmethod=marker
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set path+=/usr/*/include
set path+=/usr/include/*

" Vim looking
syntax on
set cursorline
set number
set background=dark
colors onedark
set ruler
set incsearch
set hlsearch
set showcmd
set cmdheight=1
set showtabline=2
set laststatus=2
set list
set listchars=tab:\\ ,trail:-
set winheight=5
set winminheight=3
let c_gnu = 1
let c_no_utf = 0
let c_no_if0 = 0

" GUI Vim settings
if has("gui_running")
	" Use context menu
	set mousemodel=popup
    set mouseshape=i-r:beam,s:updown,sd:updown,vs:leftright,vd:leftright,m:no,ml:up-arrow,v:rightup-arrow

	" Hide scroll bar, menus, toolbar etc.
	set guioptions=aeiEGMt

	"source $VIMRUNTIME/delmenu.vim
	"source $VIMRUNTIME/menu.vim
	
	" Set gui font
	if has("gui_gtk3")
		set guifont=SauceCodePro\ Nerd\ Font\ 12
		"set guifont=DejaVuSansMono\ Nerd\ Font\ 12
		set guifontwide=Noto\ Sans\ CJK\ SC\ 12
	endif

	" On Ubuntu, set system language to en
	" if set to zh-cn, line height will be rendered higher
	"set linespace=-4

	"Set gui Window size and position
	set lines=27
	set columns=135
	winpos 5 53
	"set lines=29
	"set columns=134
	"winpos 11 83

	" I don't want to wait a while for Escape
	inoremap <Esc> <Esc><Esc>
endif

" Key map
let mapleader=","
nnoremap <C-l> <Esc>:bn<CR>
nnoremap <C-h> <Esc>:bp<CR>
nnoremap <C-q> <Esc>:bd<Space>

nnoremap <Space> <C-w>
nnoremap <Space>w <Esc>:w<CR>
nnoremap <M-n> <Esc>:tabn<CR>
nnoremap <M-N> <Esc>:tabnew
nnoremap <M-p> <Esc>:tabp<CR>
nnoremap <M-c> <Esc>:tabc<CR>
nnoremap <M-f> <Esc>:tabf<CR>
nnoremap <M-l> <Esc>:tabl<CR>
inoremap <Leader>; <Esc>$a;
inoremap <Leader>, <Esc>f)a,
