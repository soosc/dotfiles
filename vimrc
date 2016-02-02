set nocompatible
filetype off

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/gundo.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
" required for vim-colorscheme-switcher
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'
Plug 'mileszs/ack.vim'

call plug#end()

let mapleader=","
set t_Co=256
set encoding=utf-8
set number
set hlsearch
set ruler
set scrolloff=10
set laststatus=2
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
" set textwidth=80
set colorcolumn=+1

filetype plugin indent on

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" syntastic
" let g:NERDTreeDirArrows=0

" vim-colors-solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
" set background=light
" colorscheme summerfruit256

" guno.vim
" http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

au BufRead,BufNewFile *.md setlocal textwidth=80
