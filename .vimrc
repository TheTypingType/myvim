" A first little try to create a .vimrc file to spice up the vim experience

set relativenumber 		" turn relative line numbers on
augroup numbertoggle

syntax on			    " filetype specific syntax coloring
filetype indent plugin on	" filetype specific indentation

" Make double-<Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

"nnoremap 0 ^				    " remap 0 to jump to first non-blank character

set incsearch                   " show best match so far when searching
set ignorecase
set smartcase			" when searching, try to be smart about cases
set showmatch			" show matching brackets when indicator is over them

set noexpandtab			" do not use spaces instead of tabs
set shiftwidth=4
set softtabstop=4

set wrap			    " do not wrap line

set foldmethod=indent           " enable folding, fold with 'za'

set history=500                 " remember a lot of commands and search patterns

set showcmd                     " show incomplete command when typing

set scrolloff=7                 " minimum nr. of lines above and below cursor


" --- UNDO ---

set undofile                " Save undos after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" --- VISUAL remaps --- "

" --- <leader> commands ---

nnoremap <SPACE> <Nop>
let mapleader="\<space>"
" quickly edit .vimrc by opening a split
nnoremap <leader>rc :split $MYVIMRC<CR>        

map <Leader>a ggVG              " select all text in buffer
"nnoremap <leader><leader> :w<CR> "double space saves file

" --- PLUGINS ---
filetype indent plugin on	" filetype specific indentation

" Ultisnips
set runtimepath+=~/.vim/ultisnips_rep
"helptags ~/.vim/ultisnips_rep/doc
set runtimepath+=~/.vim/my-snippets/

" Latex-Suite
set runtimepath+=~/.vim/latex-suite
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
