" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Set default NERDTree's width
let g:NERDTreeWinSize=30

" Change default mappings
let NERDTreeMapOpenSplit='<C-x>'
let NERDTreeMapOpenVSplit='<C-v>'

" Automatically delete the buffer after deleting or renaming a file
let NERDTreeAutoDeleteBuffer = 1

" Show hidden files
let NERDTreeShowHidden=1

" Disable cursorline for NERDTree
let NERDTreeHighlightCursorline=0

" Start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI = 1

" Exit nvim if NERDTree is the only window left
autocmd bufenter * if winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree() | q | endif

" Prevent other buffers open in NERDTree buffer
autocmd FileType nerdtree let t:nerdtree_winnr = bufwinnr('%')
autocmd BufWinEnter * call PreventBuffersInNERDTree()
function! PreventBuffersInNERDTree()
  if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree'
    \ && exists('t:nerdtree_winnr') && bufwinnr('%') == t:nerdtree_winnr
    \ && &buftype == '' && !exists('g:launching_fzf')
    let bufnum = bufnr('%')
    close
    exe 'b ' . bufnum
    NERDTree
  endif
  if exists('g:launching_fzf') | unlet g:launching_fzf | endif
endfunction


" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Change default arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Ignore specified files
let g:NERDTreeIgnore = ['^build$', '^dist$', '^node_modules$', '^.git$']
