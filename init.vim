" Leader key
let mapleader = ","

" Fast saving
nmap <leader>w :w<cr>

" Fast quitting
nmap <leader>q :q<cr>

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><space> :nohl<cr>

" Esc vim modes
imap jj <Esc>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Common options
set termguicolor
set hlsearch
set ignorecase
set smartcase
set smartindent
