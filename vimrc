set nocompatible

call plug#begin()

Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'jlanzarotta/bufexplorer'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'xolox/vim-misc' " required for vim-colorscheme-switcher
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'

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

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" vim-colors-solarized
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized
" colorscheme summerfruit256
colorscheme tir_black

" guno.vim
" http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

au BufRead,BufNewFile *.md setlocal textwidth=80

" scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" kien/ctrlp.vim
let g:ctrlp_show_hidden = 1
