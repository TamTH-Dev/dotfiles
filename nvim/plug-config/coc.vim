" Specify plugins to install
let g:coc_global_extensions = [
       \'coc-clangd',
       \'coc-css',
       \'coc-eslint',
       \'coc-explorer',
       \'coc-html',
       \'coc-java',
       \'coc-json',
       \'coc-snippets',
       \'coc-prettier',
       \'coc-sh',
       \'coc-tsserver',
       \'coc-vetur',
       \]
       \'coc-python',

" Disable neovim warning on startup
let g:coc_disable_startup_warning = 1

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? \"\<C-n>" :
      \ <SID>check_back_space() ? \"\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? \"\<C-p>" : \"\<C-h>"

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
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action>

" Add (Neo)Vim's native statusline support.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <leader>ga  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>ge  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>gc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>go  :<C-u>CocList outline<cr>
" Move to definition (function, variables,...)
nmap <silent> <leader>gd <Plug>(coc-definition)
" Move to references (function, variables,...)
nmap <silent> <leader>gr <Plug>(coc-references)
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Open coc explorer
nmap <C-n> :CocCommand explorer<CR>
