call plug#begin()
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
call plug#end()

syntax on
set nu
set rnu
set tabstop=4
set softtabstop=4
set shiftwidth=4 
set expandtab
set smarttab
set smartindent
set hidden
set incsearch
set ignorecase
set smartcase
set scrolloff=8
set encoding=utf-8
set nobackup
set nowritebackup
set splitright
set splitbelow 
set autoread
set mouse=a
set nowrap
filetype on
filetype plugin on
filetype indent on

set bg=dark
colorscheme gruvbox

map <C-a> :NERDTreeToggle<CR>
map <C-o> :term<Enter>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let mapleader=" "
nnoremap <SPACE> <Nop>

nnoremap ,w <C-w>

let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

vnoremap < <gv
vnoremap > >gv
