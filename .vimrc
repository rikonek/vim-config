syntax on
set nowrap
set encoding=utf8

set laststatus=2 " Always display the status line
set cursorline " Enable highlighting of the current line
set title " Vim can set the terminal title
set backspace=2 " Make backspace work like most other programs

"set runtimepath+=~/vim/runtime
"let $VIMRUNTIME='~/vim/runtime'

" Vundle configuration
"set noncompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-syntastic/syntastic'

" Theme / Interface
Plugin 'joshdick/onedark.vim' " color scheme
"Plugin 'vim-airline/vim-airline' " bottom status bar
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim' " bottom status bar
Plugin 'spf13/vim-autoclose' " auto close brace
Plugin 'ryanoasis/vim-devicons' " icon pack
Plugin 'mhinz/vim-startify' " start screen
Plugin 'nathanaelkane/vim-indent-guides' " indent guid lines
Plugin 'jeffkreeftmeijer/vim-numbertoggle' " number and relative number

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Manual
Plugin 'vim-utils/vim-man'

" Autocomplete
"Plugin 'valloric/youcompleteme'
"Plugin 'rip-rip/clang_complete'
"Plugin 'lvzixun/Clang-Complete'
"Plugin 'justmao945/vim-clang'

call vundle#end()
filetype plugin indent on
" End Vundle configuration

" Show linenumbers
set number relativenumber
"set ruler

set tabstop=8 " set tab width
"set shiftwidth=8 " automatic indentation for >>, <<, ==
set smarttab
"set expandtab " insert space instead of tab
set noexpandtab " use tabs, not spaces

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Set background for column >= 81
execute "set colorcolumn=" . join(range(81,335), ',')

" Key map
map <silent> <C-b> :NERDTreeToggle<CR>
map <silent> <C-n> :Startify<CR>
map <silent> <C-m> :TagbarToggle<CR>
map <C-w>t :tabnew<CR>
map <C-w>tq :tabclose<CR>
map <C-w>th :tabprev<CR>
map <C-w>tl :tabnext<CR>

" NERDTree
"autocmd vimenter * NERDTree " Auto open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close if only NERDTree is open

" Syntastic
set statusline+=%#Warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Onedark
colorscheme onedark

" Vim-Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_theme='onedark'
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1

" Lighline
set noshowmode " don't show vim '--- insert ---' because we use a lightline plugin
let g:lightline = {
        \ 'colorscheme': 'onedark',
        \ 'active': {
                \ 'left': [ [ 'mode', 'paste' ],
                        \ [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
                \ 'gitbranch': 'fugitive#head'
        \ },
\ }

" VIM Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=238

" VIM Devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" vim-gitgutter
set updatetime=100
let g:gitgutter_highlight_lines = 1

" youcompleteme
let g:ycm_global_ycm_extra_conf='~/vim-config/ycm_extra_conf.py'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
"let g:ycm_path_to_python_interpreter=''

" clang_completer
"let g:clang_library_path=''
