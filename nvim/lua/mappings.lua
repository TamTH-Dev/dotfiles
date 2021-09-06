-- Leader key
vim.g.mapleader = ','

-- Fast saving
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<cr>', { silent = true })

-- Fast quitting
vim.api.nvim_set_keymap('n', '<leader>q', ':q<cr>', { silent = true })

-- Split windows
vim.api.nvim_set_keymap('n', '<leader>g/', ':vsplit<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>g\\', ':split<cr>', { silent = true })

-- Move between windows
vim.api.nvim_set_keymap('n', '<A-j>', '<C-W>j', {})
vim.api.nvim_set_keymap('n', '<A-k>', '<C-W>k', {})
vim.api.nvim_set_keymap('n', '<A-h>', '<C-W>h', {})
vim.api.nvim_set_keymap('n', '<A-l>', '<C-W>l', {})

-- " Disable highlight
vim.api.nvim_set_keymap('n', '<leader><space>', ':nohl<cr>', { silent = true })

-- Use tab with text block
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { silent = true })

-- Move next tab or previous tab
vim.api.nvim_set_keymap('n', '<leader><Tab>', ':tabnext<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-Tab>', ':tabprevious<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<cr>', { silent = true })

-- Esc vim modes
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { silent = true })

-- Move vertically by visual line
vim.api.nvim_set_keymap('n', 'j', 'gj', { silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { silent = true })

-- Close all buffers except the last one
vim.api.nvim_set_keymap('n', '<leader>cb', ':w <bar> %bd <bar> e# <bar> bd# <cr>', { silent = true })

-- Go to specific tab by number
for i = 1,10,1 do 
  vim.api.nvim_set_keymap('n', '<leader>' .. i, i .. 'gt', { silent = true })
end
