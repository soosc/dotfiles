set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" vim config
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

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'
Plugin 'sjl/gundo.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
" required for vim-colorscheme-switcher
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ngmy/vim-rubocop'
Plugin 'mileszs/ack.vim'

call vundle#end()
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
