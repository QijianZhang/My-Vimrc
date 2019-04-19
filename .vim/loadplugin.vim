"===============================================================================
" Load plugins with vim-plug
" Author: Qijian Zhang
" Date: 2018-09-09
" vim-plug: https://github.com/junegunn/vim-plug
"===============================================================================

" Put plugins at ~/.vim/plugged
call plug#begin('~/.vim/plugged')

" syntax color schemas
Plug 'altercation/vim-colors-solarized'
Plug 'bluz71/vim-moonfly-colors'
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'luochen1990/rainbow'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pboettch/vim-cmake-syntax'
Plug 'tomasr/molokai'
Plug 'vim-pandoc/vim-pandoc-syntax'

" File type plugins
"Plug 'aklt/plantuml-syntax'
Plug 'cespare/vim-toml'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'plasticboy/vim-markdown'
Plug 'racer-rust/vim-racer'
"Plug 'rhysd/vim-crystal'
Plug 'rust-lang/rust.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'timonv/vim-cargo'
"Plug 'vim-ruby/vim-ruby'
"Plug 'vim-scripts/rfc-syntax'
"Plug 'tkztmk/vim-vala'
Plug 'jhradilek/vim-docbk'
Plug 'valloric/matchtagalways'
"Plug 'hukeyue/vim-clangd'
"Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'tbastos/vim-lua'

" others
Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
"Plug 'sjb/devhelp.vim'
Plug 'somini/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'yianwillis/vimcdoc'
Plug 'alx741/vinfo'
Plug 'godlygeek/tabular'
Plug 'lilydjwg/fcitx.vim'

call plug#end()

"===============================================================================
" Configure plugins
"===============================================================================

"-------------------------------------------------------------------------------
" youcompleteme
"-------------------------------------------------------------------------------
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_complete_in_comments = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_stop_completion = ['<CR>']

"-------------------------------------------------------------------------------
" syntastic
"-------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
	\ "mode": "active",
	\ "active_filetypes": [],
	\ "passive_filetypes": ["tex", "asm"] }

let g:syntastic_cpp_compiler_options='-fconcepts'

let g:syntastic_c_include_dirs = ["../../include", "../../../include"]

"-------------------------------------------------------------------------------
" Markdown
"-------------------------------------------------------------------------------
"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_math = 1
"let g:vim_markdown_frontmatter = 1
"let g:vim_markdown_toml_frontmatter = 1
"let g:vim_markdown_json_frontmatter = 1

"-------------------------------------------------------------------------------
" airline
"-------------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
"let g:airline#extensions#cursormode#enabled = 1
let g:airline_theme='onedark'

set statusline +=%{fugitive#statusline()}
j
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

"-------------------------------------------------------------------------------
" vim-cpp-enhanced-highlight
"-------------------------------------------------------------------------------
let g:cpp_concepts_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_member_variable_highlight=1

"-------------------------------------------------------------------------------
" Startify
"-------------------------------------------------------------------------------
let g:startify_fortune_use_unicode = 1

"-------------------------------------------------------------------------------
" Devicons
"-------------------------------------------------------------------------------
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"-------------------------------------------------------------------------------
" Matchtagalways
"-------------------------------------------------------------------------------
let g:mta_filetypes = {
	\ 'html' : 1,
	\ 'xhtml' : 1,
	\ 'xml' : 1,
	\ 'rng' : 1,
	\ 'xsl' : 1,
	\ 'jinja' : 1,
	\}

"-------------------------------------------------------------------------------
" Ultisnips
"-------------------------------------------------------------------------------
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetsDir="~/.vim/mysnippets"
let g:UltiSnipsSnippetDirectories=["~/.vim/mysnippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"

"-------------------------------------------------------------------------------
" Rust
"-------------------------------------------------------------------------------
let g:rust_fold = 2
let g:rustfmt_autosave = 1
let g:rustfmt_autosave_if_config_present = 1

"-------------------------------------------------------------------------------
" Pandoc
"-------------------------------------------------------------------------------
let g:pandoc#spell#enabled = 0
