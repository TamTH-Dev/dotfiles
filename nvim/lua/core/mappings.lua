local utils = require 'core.utils'

local map = utils.map
local global = vim.g

-- Leader key
global.mapleader = ','

local M = {}

M.misc = function()
  -- Fast saving
  map('n', '<leader>w', ':w!<cr>')

  -- Fast quitting
  map('n', '<leader>q', ':q<cr>')

  -- Split windows
  map('n', '<leader>g/', ':vsplit<cr>')
  map('n', '<leader>g\\', ':split<cr>')

  -- Move between windows
  map('n', '<A-j>', '<C-W>j')
  map('n', '<A-k>', '<C-W>k')
  map('n', '<A-h>', '<C-W>h')
  map('n', '<A-l>', '<C-W>l')

  -- Disable highlight
  map('n', '<leader><space>', ':nohl<cr>')

  -- Use tab with text block
  map('v', '<Tab>', '>gv')
  map('v', '<S-Tab>', '<gv')

  -- Move next tab or previous tab
  map('n', '<leader><Tab>', ':tabnext<cr>')
  map('n', '<leader><S-Tab>', ':tabprevious<cr>')
  map('n', '<leader>t', ':tabnew<cr>')

  -- Esc vim modes
  map('i', 'jj', '<Esc>')

  -- Move vertically by visual line
  map('n', 'j', 'gj')
  map('n', 'k', 'gk')

  -- Close all buffers except the last one
  map('n', '<leader>cb', ':w <bar> %bd <bar> e# <bar> bd# <cr>')
end

-- M.nvimtree = function()
   -- map('n', '<C-n>', ':NvimTreeToggle<CR>')
   -- map('n', '<leader>r', ':NvimTreeRefresh<CR>')
-- end

-- M.telescope = function()
   -- local m = plugin_maps.telescope_media

   -- map('n', m.search_file, '<cmd>Telescope find_files<cr>')
   -- map('n', m.search_word, '<cmd>Telescope live_grep<cr>')
   -- map('n', m.search_buffer, '<cmd>Telescope buffers<cr>')
-- end

return M
