" ============================================================
" Plugin Manager (vim-plug)
" ============================================================
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'              " Dark color scheme
Plug 'vim-airline/vim-airline'      " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'           " File tree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'             " Fuzzy finder
Plug 'airblade/vim-gitgutter'       " Git diff in gutter
Plug 'tpope/vim-commentary'         " gcc to comment/uncomment
Plug 'tpope/vim-surround'           " cs/ds/ys for surrounding text

call plug#end()

" ============================================================
" Basic
" ============================================================
set encoding=utf-8
set nobackup
set noswapfile
set hidden                  " Allow switching buffers without saving
set history=500

" ============================================================
" Appearance
" ============================================================
syntax enable
set background=dark
colorscheme gruvbox

set number                  " Show line numbers
set cursorline              " Highlight current line
set showcmd                 " Show command in bottom bar
set showmatch               " Highlight matching brackets
set laststatus=2            " Always show status line
set scrolloff=5             " Keep 5 lines above/below cursor

" ============================================================
" Indentation
" ============================================================
set expandtab               " Use spaces instead of tabs
set tabstop=2               " Tab = 2 spaces
set shiftwidth=2            " Indent = 2 spaces
set softtabstop=2
set autoindent
set smartindent

" ============================================================
" Search
" ============================================================
set ignorecase              " Case-insensitive search
set smartcase               " Case-sensitive if uppercase used
set incsearch               " Incremental search
set hlsearch                " Highlight search results

" ============================================================
" Key mappings
" ============================================================
let mapleader = "\<Space>"

" Clear search highlight with Esc
nnoremap <Esc> :nohlsearch<CR><Esc>

" NERDTree
nnoremap <Leader>e :NERDTreeToggle<CR>

" fzf
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>g :Rg<CR>

" Move between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ============================================================
" Plugin settings
" ============================================================
" vim-airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1   " Show buffers in tabline

" NERDTree
let g:NERDTreeShowHidden = 1                   " Show hidden files
let g:NERDTreeMinimalUI = 1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 &&
  \ exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" gitgutter
set updatetime=250
