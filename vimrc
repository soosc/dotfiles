set nocompatible

call plug#begin()

Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'jlanzarotta/bufexplorer'
" Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
" Plug 'xolox/vim-colorscheme-switcher'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
" Plug 'ekalinin/Dockerfile.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sjl/gundo.vim'
Plug 'xolox/vim-misc' " required for vim-colorscheme-switcher
" Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-sensible'
" Plug 'rstacruz/sparkup'
" Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
" Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
" Plug 'SirVer/ultisnips'

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

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" vim-colors-solarized
set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized
" colorscheme summerfruit256
" colorscheme tir_black
colorscheme gruvbox

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
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_quiet_messages = { "!level": "errors" }

" kien/ctrlp.vim
let g:ctrlp_show_hidden = 1

" airblade/vim-gitgutter 
let g:gitgutter_max_signs = 500  " default value

" Shougo/neocomplete.vim
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" dhruvasagar/vim-table-mode

let g:plug_threads = 3
