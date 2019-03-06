set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'cream-showinvisibles'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-airline config:
set laststatus=2
let g:airline_powerline_fonts=1

" Change the cursor depending on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" keep some more lines for scope
set scrolloff=5

" make backspace work like most other apps
set backspace=2

" spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4

autocmd Filetype scss setlocal tabstop=2
autocmd Filetype eruby setlocal tabstop=2
autocmd Filetype ruby setlocal tabstop=2

" showing whitespace
set listchars=tab:→\ ,trail:⠿,nbsp:◊,
set list " hide with 'nolist'

" syntax highlighting
syntax on

" show the current command (including <leader>)
set showcmd

" visual mode bindings
vmap <Tab> >gv
vmap <S-Tab> <gv

" NERDTree
map <C-n> :NERDTreeToggle<CR>
