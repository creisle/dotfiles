set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'scrooloose/nerdtree'
Plugin 'oblitum/rainbow'
Plugin 'wting/rust.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'scrooloose/syntastic'
" The following are examples of different formats supported.

" Plugins added by creisle
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/supertab' "autocompletion
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

" General
set history=700
set autoread
set magic
set showmatch " Brackets
set noerrorbells
set novisualbell
set mouse=a
set number
set clipboard=unnamedplus

"Code Folding - vim0indent-guides options
autocmd VimEnter * IndentGuidesEnable "turns on the indenting guides
let g:indent_guides_auto_colors = 0 "turn off the auto coloring
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
set foldmethod=indent

"Show some Invisible characters
set list
set listchars=tab:>-,eol:$,trail:.

" Set the parametrs for the tagbar plugin 
let g:tagbar_ctags_bin='~/bin/ctags'

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Colors and fonts
syntax enable
set encoding=utf8
set ffs=unix,mac,dos
set background=dark
colorscheme distinguished 
highlight MatchParen cterm=bold ctermfg=cyan
" Rainbow Colors Improved Setup
au FileType c,cpp,objc,objcpp,go,rust,javascript,java call rainbow#load()
au FileType clojure call rainbow#load([['(', ')'], ['\[', '\]'], ['{', '}']], '"[-+*/=><%^&$#@!~|:?\\]"')


" Fix some junk
set nobackup
set nowb
set noswapfile
set nocompatible

" Indents
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai " Auto Indent
set si " Smart Indent
set wrap
