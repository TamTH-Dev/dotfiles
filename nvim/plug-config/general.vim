" ============================================================================ "
" ============================================================================ "
" ====                           GENERAL SETTINGS                         ==== "
" ============================================================================ "
" ============================================================================ "

set encoding=utf-8
set termguicolors
set t_Co=256
syntax enable
set background=dark
let g:tokyonight_style = 'night' " available: night, storm
colorscheme tokyonight
set relativenumber
set number
set numberwidth=4
set showcmd
set wildmenu
set lazyredraw
set ttyfast
set nojoinspaces
set autoindent
set smartindent
filetype indent on
set laststatus=2
set hidden
set ic
set updatetime=300
set formatoptions-=c formatoptions-=r formatoptions-=o
set switchbuf=useopen

set nobackup
set noswapfile
set noundofile
set nowritebackup
set history=50

set expandtab
set smarttab
set splitbelow
set splitright

set hlsearch
set incsearch
set ruler
set smartcase
set magic

" Save neovim yank to clipboard
set clipboard+=unnamedplus

" Disable inserting comment on new line automatically
au BufEnter * set fo-=c fo-=r fo-=o

" Set common tab/space
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Set tab/space for specific languages
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype sh setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype text setlocal tabstop=4 shiftwidth=4 softtabstop=4
