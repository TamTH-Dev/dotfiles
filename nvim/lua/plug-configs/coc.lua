local map = vim.api.nvim_set_keymap
local global = vim.g
local options = { silent = true, nowait = true }

-- Specify plugins to install
global.coc_global_extensions = {
 'coc-clangd',
 'coc-css',
 'coc-eslint',
 'coc-explorer',
 'coc-html',
 'coc-java',
 'coc-json',
 'coc-snippets',
 'coc-prettier',
 'coc-python',
 'coc-sh',
 'coc-tsserver',
 'coc-vetur',
}

-- Disable neovim warning on startup
global.coc_disable_startup_warning = 1

-- Use tab for trigger completion with characters ahead and navigate
-- inoremap <silent><expr> <TAB>
--       \ pumvisible() ? \"\<C-n>" :
--       \ <SID>check_back_space() ? \"\<TAB>" :
--       \ coc#refresh()
-- inoremap <expr><S-TAB> pumvisible() ? \"\<C-p>" : \"\<C-h>"

-- function! s:check_back_space() abort
--   let col = col('.') - 1
--   return !col || getline('.')[col - 1]  =~# '\s'
-- endfunction

-- Highlight the symbol and its references when holding the cursor.
-- autocmd CursorHold * silent call CocActionAsync('highlight')

-- Add `:Format` command to format current buffer.
-- command! -nargs=0 Format :call CocAction('format')

-- Add `:Fold` command to fold current buffer.
-- command! -nargs=? Fold :call     CocAction('fold', <f-args>)

-- Add `:OR` command for organize imports of the current buffer.
-- command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action>

-- Add (Neo)Vim's native statusline support.
-- set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

-- Mappings for CoCList
-- Show all diagnostics.
map('n', '<leader>a', ':<C-u>CocList diagnostics<cr>', options)
-- Manage extensions.
map('n', '<leader>ge', ':<C-u>CocList extensions<cr>', options)
-- Show commands.
map('n', '<leader>gc', ':<C-u>CocList commands<cr>', options)
-- Find symbol of current document.
map('n', '<leader>go', ':<C-u>CocList outline<cr>', options)
-- Move to definition (function, variables,...)
map('n', '<leader>gd', '<Plug>(coc-definition)', options)
-- Move to references (function, variables,...)
map('n', '<leader>gr', '<Plug>(coc-references)', options)
-- Search workspace symbols.
map('n', '<space>s', ':<C-u>CocList -I symbols<cr>', options)
-- Do default action for next item.
map('n', '<space>j', ':<C-u>CocNext<CR>', options)
-- Do default action for previous item.
map('n', '<space>k', ':<C-u>CocPrev<CR>', options)
-- Resume latest coc list.
map('n', '<space>k', ':<C-u>CocListResume<CR>', options)

-- Open coc explorer
map('n', '<C-n>', ':CocCommand explorer<CR>', options)
