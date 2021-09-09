local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader><S-Tab>', ':BufferPrevious<cr>', options)
map('n', '<leader><Tab>', ':BufferNext<cr>', options)

-- Re-order to previous/next
map('n', '<leader><', ':BufferMovePrevious<cr>', options)
map('n', '<leader>>', ' :BufferMoveNext<cr>', options)

-- Goto buffer in position...
map('n', '<leader>1', ':BufferGoto 1<cr>', options)
map('n', '<leader>2', ':BufferGoto 2<cr>', options)
map('n', '<leader>3', ':BufferGoto 3<cr>', options)
map('n', '<leader>4', ':BufferGoto 4<cr>', options)
map('n', '<leader>5', ':BufferGoto 5<cr>', options)
map('n', '<leader>6', ':BufferGoto 6<cr>', options)
map('n', '<leader>7', ':BufferGoto 7<cr>', options)
map('n', '<leader>8', ':BufferGoto 8<cr>', options)
map('n', '<leader>9', ':BufferGoto 9<cr>', options)
map('n', '<leader>10', ':BufferGoto 10<cr>', options)
map('n', '<leader>0', ':BufferLast<cr>', options)

-- Close all buffer but accept the current one
map('n', '<leader>cb', ':BufferCloseAllButCurrent<cr>', options)

-- Sort buffer
map('n', '<leader>bb', ':BufferOrderByBufferNumber<cr>', options)
map('n', '<leader>bd', ':BufferOrderByDirectory<cr>', options)
map('n', '<leader>bl', ':BufferOrderByLanguage<cr>', options)
