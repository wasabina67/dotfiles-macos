" Encoding
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932

" Fileformats
set fileformats=unix,dos,mac

" Set number
set number

" Set number color
highlight LineNr ctermfg=239

" Nowrap
set nowrap

" Set lastline
set display=lastline

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Completion (^P)
" (^N^P)
set pumheight=10
set wildmenu wildmode=list:longest,full
set history=1000

" Indent, Tab
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

" Stop beep
set visualbell

" Stop screen flash
set t_vb=

" Beginning of line (Shift + h)
nnoremap <S-h> ^

" End of line (Shift + l)
nnoremap <S-l> $

" Show match
set showmatch
set matchtime=10

" junegunn/vim-plug
call plug#begin()

Plug 'airblade/vim-gitgutter'
set updatetime=100
highlight GitGutterAdd ctermfg=green ctermbg=brown

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let AirlineTheme='dark'

call plug#end()
