scriptencoding utf-8
source ~/.config/nvim/plugins.vim

" Basic Configuration
set encoding=utf-8
syntax enable
set termguicolors
set t_Co=256
set background=dark
colorscheme gotham
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
autocmd Filetype cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype h setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype sh setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4

" Disable neovim warning on startup
let g:coc_disable_startup_warning = 1

" Leader key
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast quitting
nmap <leader>q :q<cr>

" Split windows
" nnoremap <Leader>/ :vsplit<CR>
" nnoremap <Leader>\ :split<CR>

" Smart way to move between windows
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-h> <C-W>h
map <A-l> <C-W>l

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><space> :nohl<cr>

" Go to specific tab by number
for i in range(1, 10)
  execute "nnoremap <leader>" . i . " " . i . "gt"
endfor

" Move next tab or previous tab
nnoremap <leader><S-Tab> :tabprevious<CR>
nnoremap <leader><Tab>   :tabnext<CR>
nnoremap <leader>t       :tabnew<CR>

" Esc vim modes
imap jj <Esc>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Save neovim yank to clipboard
set clipboard+=unnamedplus

" Multi select
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Nerdtree Configuration
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd bufenter * if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | q | endif  " Exit neovim if nerdtree is the last window
map <C-b> :NERDTreeToggle<CR>

" Vim-airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_highlighting_cache = 1

" Vim Close-tag Configuration
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

" NerdCommenter Configuration
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'
map <leader>/ <plug>NERDCommenterToggle

" Vim-Snippets Configuration
let g:UltiSnipsExpandTrigger="<C-d>"

" Coc Configuration
let g:coc_global_extensions = [
         \'coc-css',
         \'coc-eslint',
         \'coc-html',
         \'coc-json',
         \'coc-prettier',
         \'coc-python',
         \'coc-sh',
         \'coc-tsserver',
         \]
nnoremap <silent><nowait> <C-e> :<C-u>CocList diagnostics<cr>

" Emmet-Vim Configuration
let g:user_emmet_leader_key='<C-y>'

" Supertab Configuration
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Fzf Configuration
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nmap <C-t> :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction
