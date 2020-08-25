set nocompatible

let $MYVIMRC='C:\Users\Andrew\Documents\_vimrc'

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate' " auto closing params
Plug 'EinfachToll/DidYouMean'
Plug 'easymotion/vim-easymotion' " leader leader character; quick search
Plug 'airblade/vim-gitgutter' "show git diffs
Plug 'xolox/vim-misc' " required for vim-colorscheme-switcher
Plug 'scrooloose/nerdcommenter' " leader cc; commends line of code
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular' " align text

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

" indents
filetype plugin indent on

autocmd FileType adoc setlocal syntax=asciidoc shiftwidth=4 spell
autocmd FileType adoc setlocal textwidth=80
autocmd FileType erb setlocal shiftwidth=4
autocmd FileType html setlocal shiftwidth=4
autocmd FileType js setlocal shiftwidth=2
autocmd FileType md setlocal shiftwidth=4 textwidth=80 spell
autocmd FileType yml setlocal tabstop=2 softtabstop=2 shiftwidth=2 spell
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 spell

au BufRead,BufNewFile *.adoc setlocal spell linebreak

" flazz/vim-colorschemes
let g:colorscheme_switcher_define_mappings = 0

nnoremap <silent> <F7> :PrevColorScheme<CR>
nnoremap <silent> <F8> :NextColorScheme<CR>

" nerdtree
map <C-n> :NERDTreeToggle<CR>

colorscheme astronaut

if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" kien/ctrlp.vim
let g:ctrlp_show_hidden = 1

" airblade/vim-gitgutter 
let g:gitgutter_max_signs = 500  " default value

