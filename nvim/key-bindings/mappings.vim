" ============================================================================ "
" ============================================================================ "
" ====                              KEYS MAPPINGS                         ==== "
" ============================================================================ "
" ============================================================================ "

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
