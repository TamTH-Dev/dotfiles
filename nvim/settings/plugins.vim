" ============================================================================ "
" ============================================================================ "
" ====                         PLUGINS CONFIGURATION                      ==== "
" ============================================================================ "
" ============================================================================ "



" ============================================================================ "
" ===                             MULTI CURSORS                            === "
" ============================================================================ "

" Keys mappings
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" ============================================================================ "
" ===                                NERDTREE                              === "
" ============================================================================ "

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


" ============================================================================ "
" ===                              VIM AIRLINE                             === "
" ============================================================================ "

" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

" Path formatter
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Disable buffer rendering on tabline
let g:airline#extensions#tabline#show_buffers = 0

" Enable caching of the various syntax highlighting groups
let g:airline_highlighting_cache = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1


" ============================================================================ "
" ===                             VIM CLOSE-TAG                            === "
" ============================================================================ "

" File extensions where this plugin is enabled
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue'

" List of non-closing tags self-closing in the specified files
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.vuex'

" Make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1


" ============================================================================ "
" ===                             COMMENTARY                               === "
" ============================================================================ "

" Keys mappings
xmap <leader>/  <Plug>Commentary
nmap <leader>/  <Plug>Commentary
omap <leader>/  <Plug>Commentary
nmap <leader>/  <Plug>CommentaryLine


" ============================================================================ "
" ===                               TAGBAR                                 === "
" ============================================================================ "

" Toggle tagbar
" nmap <F8> :TagbarToggle<CR>

" Open tagbar for specified filetypes
" autocmd FileType javascript,javascriptreact,jsx,typescript,typescriptreact,tsx,vue,python,c,cpp,java nested :TagbarOpen

" Set tagbar's width
" The tagbar window will be set to 20 percent of the window width with a limit of no less than 25 characters.
" let g:tagbar_width = max([25, winwidth(0) / 6])

" Omit the short help at the top of the window and the blank lines in between top-level scopes
" let g:tagbar_compact = 1

" Show absolute tags' line number
" let g:tagbar_show_tag_linenumbers = 1

" Set icons for tagbar
" let g:tagbar_iconchars = ['▸', '▾']


" ============================================================================ "
" ===                                SNIPPETS                              === "
" ============================================================================ "

" Trigger snippet expand
imap <CR> <Plug>(coc-snippets-expand)

" Select text for visual placeholder of snippet
vmap <CR> <Plug>(coc-snippets-select)

" Jump to next placeholder
let g:coc_snippet_next = '<CR>'


" ============================================================================ "
" ===                                 COC                                  === "
" ============================================================================ "

" Specify plugins to install
let g:coc_global_extensions = [
       \'coc-clangd',
       \'coc-css',
       \'coc-eslint',
       \'coc-html',
       \'coc-java',
       \'coc-json',
       \'coc-snippets',
       \'coc-prettier',
       \'coc-python',
       \'coc-sh',
       \'coc-tsserver',
       \'coc-vetur',
       \]

" Disable neovim warning on startup
let g:coc_disable_startup_warning = 1

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" ============================================================================ "
" ===                                EMMET                                 === "
" ============================================================================ "

" Remap the default emmet's leader key
let g:user_emmet_leader_key='<C-y>'


" ============================================================================ "
" ===                             VIM-JAVASCRIPT                           === "
" ============================================================================ "

" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1


" ============================================================================ "
" ===                              VIM-VUE                                 === "
" ============================================================================ "

"Disable pre-processor languages altogether (only highlight HTML, JavaScript, and CSS)
let g:vue_pre_processors = []


" ============================================================================ "
" ===                               CTRLP                                  === "
" ============================================================================ "

" Default mapping and the default command to invoke CtrlP
" let g:ctrlp_map = '<c-P>'
" let g:ctrlp_cmd = 'CtrlP'

" Invoke CtrlP in find buffer
nnoremap <C-b> :CtrlPBuffer<CR>


" ============================================================================ "
" ===                           FZF && RIPGREP                             === "
" ============================================================================ "

" Fzf default command and options
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info --bind=shift-tab:up,tab:down --no-multi --cycle'
let $FZF_DEFAULT_COMMAND = 'rg --files --smart-case --hidden -g "!{node_modules,.git,.cache,cache,build,dist,.idea,package-lock.json}" || true'

" Fzf layout
let g:fzf_layout = {'down': '~40%'}

" Disable preview window
let g:fzf_preview_window = ['right:hidden']

" let g:fzf_nvim_statusline = 0

" Open search popup
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <C-b> :Buffers<CR>

" Actions for fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Files searching with preview window
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)

" Advanced file's content searching
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

" Advanced ripgrep integration
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --line-number --smart-case -g "!{node_modules,.git,.cache,cache,dist,build,.idea,package-lock.json}" -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, a:fullscreen)
endfunction
