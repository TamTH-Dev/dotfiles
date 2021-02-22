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
colorscheme monokai_pro
set number
set numberwidth=4
set cursorline
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
set updatetime=300

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

" Set tab/space size for specific languages
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vue setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype sh setlocal tabstop=4 shiftwidth=4 softtabstop=4
