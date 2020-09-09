call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
" Plug 'dense-analysis/ale'
" Plug 'valloric/youcompleteme'
" Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', {
   \ 'do': 'npm install',
   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
call plug#end()

" Basic Configuration
set encoding=utf-8
syntax enable
set termguicolors
set t_Co=256
set background=dark
colorscheme palenight
set number
set numberwidth=5
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

" Set tab space for specific languages
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Leader key
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast quitting
nmap <leader>q :q<cr>

" Split windows
nnoremap <Leader>/ :vsplit<CR>
nnoremap <Leader>\ :split<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><space> :nohl<cr>

" Esc vim modes
imap jj <Esc>

" Toggle line numbers
" nmap <leader>/ :set invnumber<CR>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Line moving
nnoremap <A-j> :m +1<CR>==
nnoremap <A-k> :m -2<CR>==
inoremap <A-j> <Esc>:m +1<CR>==gi
inoremap <A-k> <Esc>:m -2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Nerdtree Configuration
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <C-b> :NERDTreeToggle<CR>

" Vim-airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Youcompleteme Configuraion
set completeopt-=preview
let g:ycm_semantic_triggers =  { 'c,cpp,php,python,javascript,typescript': [ 're!\w{2}' ] }
let g:ycm_show_diagnostics_ui = 0

" ALE Configuration
" let g:ale_fixers = {
" \   'javascript': ['eslint'],
" \}
" let g:ale_sign_error = '●'
" let g:ale_sign_warning = '.'
" let g:ale_list_window_size = 5
" nmap <silent> <C-e> <Plug>(ale_next_wrap)

" Vim Close-tag Configuration
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

" NerdCommenter Configuration
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'

" Vim-Snippets Configuration
let g:UltiSnipsExpandTrigger="<C-d>"

" Coc Configuration
let g:coc_global_extensions = [
         \'coc-css',
         \'coc-flutter',
         \'coc-go',
         \'coc-html',
         \'coc-java',
         \'coc-json',
         \'coc-prettier',
         \'coc-sh',
         \'coc-tsserver',
         \'coc-vetur'
         \]
nnoremap <silent><nowait> <C-e> :<C-u>CocList diagnostics<cr>

" Emmet-Vim Configuration
let g:user_emmet_leader_key='<C-Y>'

" Supertab Configuration
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
