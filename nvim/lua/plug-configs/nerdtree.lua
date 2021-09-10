local api = vim.api
local map = api.nvim_set_keymap
local cmd = api.nvim_command
local global = vim.g

local opts = { silent = true, nowait = true }

-- Open the existing NERDTree on each new tab.
cmd('autocmd BufWinEnter * silent NERDTreeMirror')

-- Set default NERDTree's width
global.NERDTreeWinSize = 30

-- Change default mappings
global.NERDTreeMapOpenSplit = '<C-x>'
global.NERDTreeMapOpenVSplit='<C-v>'

-- Automatically delete the buffer after deleting or renaming a file
global.NERDTreeAutoDeleteBuffer = 1

-- Show hidden files
global.NERDTreeShowHidden=1

-- Disable cursorline for NERDTree
global.NERDTreeHighlightCursorline=0

-- Start NERDTree in minimal UI mode (No help lines)
global.NERDTreeMinimalUI = 1

-- Toggle NERDTree
map('n', '<C-n>', ':NERDTreeToggle<cr>', opts)

-- Exit nvim if NERDTree is the only window left
cmd([[ autocmd bufenter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif ]])

-- Prevent other buffers open in NERDTree buffer
cmd([[ autocmd FileType nerdtree let t:nerdtree_winnr = bufwinnr('%') ]])
cmd('autocmd BufWinEnter * call PreventBuffersInNERDTree()')
-- function! PreventBuffersInNERDTree()
--   if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree'
--     \ && exists('t:nerdtree_winnr') && bufwinnr('%') == t:nerdtree_winnr
--     \ && &buftype == '' && !exists('g:launching_fzf')
--     let bufnum = bufnr('%')
--     close
--     exe 'b ' . bufnum
--     NERDTree
--   endif
--   if exists('g:launching_fzf') | unlet g:launching_fzf | endif
-- endfunction

-- Change default arrows
global.NERDTreeDirArrowExpandable = ''
global.NERDTreeDirArrowCollapsible = ''

-- Ignore specified files
global.NERDTreeIgnore = { '^build$', '^dist$', '^node_modules$', '^.git$' }
