" Source installed plugins
scriptencoding utf-8
source ~/.config/nvim/plugins.vim

" ============================================================================ "
" ============================================================================ "
" ====                          BASIC CONFIGURATION                       ==== "
" ============================================================================ "
" ============================================================================ "

set encoding=utf-8
syntax enable
set termguicolors
set t_Co=256
set background=dark
colorscheme nord
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
autocmd Filetype c setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype sh setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype js setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype jsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype ts setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4

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



" ============================================================================ "
" ============================================================================ "
" ====                        PLUGINS CONFIGURATION                       ==== "
" ============================================================================ "
" ============================================================================ "


" ============================================================================ "
" ===                       MULTI CURSORS CONFIGURATION                    === "
" ============================================================================ "

" Default mappings
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
" let g:multi_cursor_prev_key            = '<C-p>'


" ============================================================================ "
" ===                         NERDTREE CONFIGURATION                       === "
" ============================================================================ "

" Automatically delete the buffer after deleting or renaming a file
let NERDTreeAutoDeleteBuffer = 1
" Show hidden files
let NERDTreeShowHidden=1
" Start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI = 1
" Exit nvim if NERDTree is the only window left
autocmd bufenter * if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | q | endif
" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>


" ============================================================================ "
" ===                        VIM AIRLINE CONFIGURATION                     === "
" ============================================================================ "

" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
" Path formatter
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Enable caching of the various syntax highlighting groups
let g:airline_highlighting_cache = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Airline theme
" let g:airline_theme='gotham'


" ============================================================================ "
" ===                       VIM CLOSE-TAG CONFIGURATION                    === "
" ============================================================================ "

" File extensions where this plugin is enabled
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
" List of non-closing tags self-closing in the specified files
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" Make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1


" ============================================================================ "
" ===                       NERD COMMENTER CONFIGURATION                   === "
" ============================================================================ "

" Add spaces after comment delimiters
let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'

" === Nerd commenter shortcuts === "
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
map <leader>/ <plug>NERDCommenterToggle


" ============================================================================ "
" ===                         ULTISNIPS CONFIGURATION                      === "
" ============================================================================ "

" === Ultisnips shortcuts === "
" Trigger configuration
let g:UltiSnipsExpandTrigger="<C-d>"


" ============================================================================ "
" ===                           COC CONFIGURATION                          === "
" ============================================================================ "

" Specify plugins to install
let g:coc_global_extensions = [
       \'coc-clangd',
       \'coc-css',
       \'coc-eslint',
       \'coc-html',
       \'coc-java',
       \'coc-json',
       \'coc-prettier',
       \'coc-python',
       \'coc-sh',
       \'coc-tsserver',
       \'coc-vetur',
       \]

" Show all diagnostics
nnoremap <silent><nowait> <C-e> :<C-u>CocList diagnostics<cr>

" Disable neovim warning on startup
let g:coc_disable_startup_warning = 1


" ============================================================================ "
" ===                         EMMET CONFIGURATION                          === "
" ============================================================================ "

" === Emmet shortcuts === "
" Remap the default emmet's leader key
let g:user_emmet_leader_key='<C-y>'


" ============================================================================ "
" ===                        SUPERTAB CONFIGURATION                        === "
" ============================================================================ "

" === Supertab shortcuts === "
" Change scrolling direction of completion popup
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"


" ============================================================================ "
" ===                     VIM-JAVASCRIPT CONFIGURATION                     === "
" ============================================================================ "

" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1


" ============================================================================ "
" ===                         DENITE CONFIGURATION                         === "
" ============================================================================ "

" === Denite shortcuts === "
" Browser currently open buffers
nmap <C-b> :Denite buffer<CR>
" Browse list of files in current directory
" nmap <C-t> :DeniteProjectDir file/rec<CR>
" Search current directory for occurences of given term and close window if no results
" nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
" Search current directory for occurences of word under cursor
" nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Define mappings while in 'filter' mode
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  " Switch to normal mode inside of search results
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  " Exit denite window in any mode
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  " Open currently selected file in any mode
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  " Open currently selected file in a new tab
  " inoremap <silent><buffer><expr> <C-t>
  " \ denite#do_map('do_action', 'tabopen')
  " Open currently selected file a vertical split
  " inoremap <silent><buffer><expr> <C-v>
  " \ denite#do_map('do_action', 'vsplit')
  " Open currently selected file in a horizontal split
  " inoremap <silent><buffer><expr> <C-h>
  " \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  " Opens currently selected file
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  " Quit Denite window
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  " Delete currenly selected file
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  " Preview currently selected file
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  " Switch to insert mode inside of filter prompt
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  " nnoremap <silent><buffer><expr> <C-o>
  " \ denite#do_map('open_filter_buffer')
  " Open currently selected file in a new tab
  " nnoremap <silent><buffer><expr> <C-t>
  " \ denite#do_map('do_action', 'tabopen')
  " Open currently selected file a vertical split
  " nnoremap <silent><buffer><expr> <C-v>
  " \ denite#do_map('do_action', 'vsplit')
  " Open currently selected file in a horizontal split
  " nnoremap <silent><buffer><expr> <C-h>
  " \ denite#do_map('do_action', 'split')
endfunction


" ============================================================================ "
" ===                         FZF CONFIGURATION                            === "
" ============================================================================ "

" Fzf default command and options
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info --preview "bat --theme="Coldark-Dark" --color=always --style=numbers --line-range :500 {}"'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/**" --glob "!build/**" --glob "!dist/**" --glob "!.dart_tool/**" --glob "!.idea" --glob "!node_modules"'

" Open search popup
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>

" Files searching with preview window
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)

" Advanced file's content searching
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

" Actions for fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Fzf layout
let g:fzf_layout = {'up': '~90%', 'window': {'width': 0.8, 'height': 0.8, 'yoffset':0.5, 'xoffset': 0.5, 'highlight': 'Todo', 'border': 'rounded'}}

" Customize fzf colors to match color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Advanced ripgrep integration
let $BAT_THEME = 'Coldark-Dark'
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case  --glob "!.git/**" --glob "!node_modules/**" --glob "!package-lock.json" --glob "!yarn.lock" --glob "!build/**" --glob "!dist/**" --glob "!.idea/**" -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
