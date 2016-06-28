set nocompatible

call plug#begin()

Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'asciidoc/vim-asciidoc'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'EinfachToll/DidYouMean'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sjl/gundo.vim'
Plug 'xolox/vim-misc' " required for vim-colorscheme-switcher
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'

call plug#end()

let mapleader=","

set t_Co=256
set encoding=utf-8
set number
set hlsearch
set scrolloff=10
set history=1024
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set ignorecase
set smartcase
set incsearch
set backup
set swapfile
set updatecount=32
set directory=~/.vim/temp//
set backupdir=~/.vim/backups//
set undodir=~/.vim/undo//
set undofile
set undolevels=64
set writebackup
set colorcolumn=+1
set visualbell
set relativenumber

" vim-asciidoc
au BufRead,BufNewFile *.asciidoc.adoc.asc set syntax=asciidoc
au BufRead,BufNewFile *.asciidoc.adoc.asc setlocal textwidth=80

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" vim-colors-solarized
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" colorscheme tir_black
" colorscheme gruvbox
colorscheme 256_noir

" guno.vim
" http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

au BufRead,BufNewFile *.md setlocal textwidth=80

" kien/ctrlp.vim
let g:ctrlp_show_hidden = 1

" airblade/vim-gitgutter 
let g:gitgutter_max_signs = 500  " default value

