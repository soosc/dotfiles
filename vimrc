set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" vim config
set number
set hlsearch
set ruler
set scrolloff=5
set laststatus=2
set history=1024
set expandtab
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase
set backup
set swapfile
set updatecount=32
set directory=~/.vim/temp//
set backupdir=~/.vim/backups//

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

call vundle#end()
filetype plugin indent on

" altercation/vim-colors-solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" sjl/guno.vim
" http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
