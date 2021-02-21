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

" Change default mappings
" let NERDTreeMapOpenInTab='<C-t>'
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

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" Change default arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Ignore specified files
let g:NERDTreeIgnore = ['^build$', '^dist$', '^node_modules$', '^.git$']


" ============================================================================ "
" ===                              VIM AIRLINE                             === "
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


" ============================================================================ "
" ===                             VIM CLOSE-TAG                            === "
" ============================================================================ "

" File extensions where this plugin is enabled
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" List of non-closing tags self-closing in the specified files
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

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
nmap <F8> :TagbarToggle<CR>

" Open tagbar for specified filetypes
autocmd FileType html,css,javascript,javascriptreact,jsx,typescript,typescriptreact,tsx,vue,python,c,cpp,java nested :TagbarOpen

" Set tagbar's width
" The tagbar window will be set to 20 percent of the window width with a limit of no less than 25 characters.
let g:tagbar_width = max([25, winwidth(0) / 5])

" Omit the short help at the top of the window and the blank lines in between top-level scopes
let g:tagbar_compact = 1

" Show absolute tags' line number
let g:tagbar_show_tag_linenumbers = 1

" Set icons for tagbar
let g:tagbar_iconchars = ['▸', '▾']


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
" ===                                VIM-VUE                               === "
" ============================================================================ "

"Disable pre-processor languages altogether (only highlight HTML, JavaScript, and CSS)
let g:vue_pre_processors = []


" ============================================================================ "
" ===                                DENITE                                === "
" ============================================================================ "

" Browse currently open buffers
nmap <C-b> :Denite buffer<CR>

" Define mappings while in 'filter' mode
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  " Switch to normal mode inside of search results
  imap <silent><buffer> <Esc>
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
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  " Open currently selected file in a horizontal split
  inoremap <silent><buffer><expr> <C-x>
  \ denite#do_map('do_action', 'split')
  " Open currently selected file a vertical split
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
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
  " Open currently selected file in a new tab
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  " Open currently selected file in a horizontal split
  nnoremap <silent><buffer><expr> <C-x>
  \ denite#do_map('do_action', 'split')
  " Open currently selected file a vertical split
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
endfunction


" ============================================================================ "
" ===                            FZF && RIPGREP                            === "
" ============================================================================ "

" Fzf default command and options
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info --preview "bat --theme="gruvbox" --color=always --style=numbers --line-range :500 {}" --bind=shift-tab:up,tab:down --no-multi --cycle'
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
let g:fzf_layout = {'up': '~90%', 'window': {'width': 0.8, 'height': 0.7, 'yoffset':0.5, 'xoffset': 0.5, 'highlight': 'Todo', 'border': 'rounded'}}

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
let $BAT_THEME = 'gruvbox'
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case  --glob "!.git/**" --glob "!node_modules/**" --glob "!package-lock.json" --glob "!yarn.lock" --glob "!build/**" --glob "!dist/**" --glob "!.idea/**" -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
