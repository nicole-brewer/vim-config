" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" To install new pluggins from here: 
" source %
" PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'micha/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" For plugins to load correctly
filetype plugin indent on

set modelines=0
set number

" Encoding
set encoding=utf-8

" Whitespace
set nowrap
set shiftwidth=3
set expandtab
set noshiftround

" searching
nnoremap / /\v
vnoremap / /\v

" Turn on syntax highlighting
syntax on

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

"Airline
let g:airline_solarized_gb='dark'
