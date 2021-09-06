local options = { silent = true }

-- Leader key
vim.g.mapleader = ','

-- Fast saving
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<cr>', options)

-- Fast quitting
vim.api.nvim_set_keymap('n', '<leader>q', ':q<cr>', options)

-- Split windows
vim.api.nvim_set_keymap('n', '<leader>g/', ':vsplit<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>g\\', ':split<cr>', options)

-- Move between windows
vim.api.nvim_set_keymap('n', '<A-j>', '<C-W>j', options)
vim.api.nvim_set_keymap('n', '<A-k>', '<C-W>k', options)
vim.api.nvim_set_keymap('n', '<A-h>', '<C-W>h', options)
vim.api.nvim_set_keymap('n', '<A-l>', '<C-W>l', options)

-- " Disable highlight
vim.api.nvim_set_keymap('n', '<leader><space>', ':nohl<cr>', options)

-- Use tab with text block
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', options)
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', options)

-- Move next tab or previous tab
vim.api.nvim_set_keymap('n', '<leader><Tab>', ':tabnext<cr>', options)
vim.api.nvim_set_keymap('n', '<leader><S-Tab>', ':tabprevious<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<cr>', options)

-- Esc vim modes
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', options)

-- Move vertically by visual line
vim.api.nvim_set_keymap('n', 'j', 'gj', options)
vim.api.nvim_set_keymap('n', 'k', 'gk', options)

-- Close all buffers except the last one
vim.api.nvim_set_keymap('n', '<leader>cb', ':w <bar> %bd <bar> e# <bar> bd# <cr>', options)

-- Go to specific tab by number
for i = 1,10,1 do
  vim.api.nvim_set_keymap('n', '<leader>' .. i, i .. 'gt', options)
end
