call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'    "fancy status line
Plug 'joshdick/onedark.vim'     "onedark theme
Plug 'jdhao/better-escape.vim'  "remaps esc key to jj
Plug 'sheerun/vim-polyglot'     "syntax colors
call plug#end()

set enc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4                   "tab width is 4 spaces
set shiftwidth=4                "indent also with 4 spaces
set expandtab                   "expand tabs to spaces
set textwidth=120
set showmatch
set laststatus=2
set noshowmode                  "hide mode (it's shown by lightline)
set ttimeout ttimeoutlen=50     "fixes modeswitch lag with lightline
syntax on
"colorscheme monokai
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \}

if !has('gui_running')
  set t_Co=256
endif

"set termguicolors
"hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
"hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
"hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
"hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
