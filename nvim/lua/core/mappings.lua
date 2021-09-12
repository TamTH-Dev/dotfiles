local M = {}
local utils = require 'core.utils'

local map = utils.map
local global = vim.g

-- Leader key
global.mapleader = ','

local common = function()
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
end

-- Set default key mappings
common()

M.nvimtree = function()
  map('n', '<C-n>', ':NvimTreeToggle<cr>')
  map('n', '<leader>r', ':NvimTreeRefresh<cr>')
end

M.telescope = function()
  map('n', '<C-p>', '<cmd>Telescope find_files<cr>')
  map('n', '<C-f>', '<cmd>Telescope live_grep<cr>')
  map('n', '<C-b>', '<cmd>Telescope buffers<cr>')
end

M.saga = function()
    -- show hover doc
  map('n', '<leader>gk', ':Lspsaga hover_doc<cr>')

  -- code action
  map('n', '<leader>ga', ':Lspsaga code_action<CR>')
  map('v', '<leader>ga', ':<C-U>Lspsaga range_code_action<CR>')

  -- show signature help
  map('n', '<leader>gs', ':Lspsaga signature_help<cr>')

  -- show diagnostic
  map('n', '<leader>gl', ':Lspsaga show_line_diagnostics<CR>')

  -- rename
  map('n', '<leader>gr', ':Lspsaga rename<cr>')

  -- jump diagnostic
  map('n', '<leader>gn', ':Lspsaga diagnostic_jump_next<cr>')
  map('n', '<leader>gp', ':Lspsaga diagnostic_jump_prev<cr>')

  -- lsp provider to find the cursor word definition and reference
  map('n', '<leader>gf', ':Lspsaga lsp_finder<cr>')
end

M.barbar = function()
    -- Move to previous/next
  map('n', '<leader><S-Tab>', ':BufferPrevious<cr>')
  map('n', '<leader><Tab>', ':BufferNext<cr>')

  -- Re-order to previous/next
  map('n', '<leader><', ':BufferMovePrevious<cr>')
  map('n', '<leader>>', ' :BufferMoveNext<cr>')

  -- Goto buffer in position...
  map('n', '<leader>1', ':BufferGoto 1<cr>')
  map('n', '<leader>2', ':BufferGoto 2<cr>')
  map('n', '<leader>3', ':BufferGoto 3<cr>')
  map('n', '<leader>4', ':BufferGoto 4<cr>')
  map('n', '<leader>5', ':BufferGoto 5<cr>')
  map('n', '<leader>6', ':BufferGoto 6<cr>')
  map('n', '<leader>7', ':BufferGoto 7<cr>')
  map('n', '<leader>8', ':BufferGoto 8<cr>')
  map('n', '<leader>9', ':BufferGoto 9<cr>')
  map('n', '<leader>10', ':BufferGoto 10<cr>')
  map('n', '<leader>0', ':BufferLast<cr>')

  -- Close all buffer but accept the current one
  map('n', '<leader>cb', ':BufferCloseAllButCurrent<cr>')

  -- Sort buffer
  map('n', '<leader>bb', ':BufferOrderByBufferNumber<cr>')
  map('n', '<leader>bd', ':BufferOrderByDirectory<cr>')
  map('n', '<leader>bl', ':BufferOrderByLanguage<cr>')
end

return M
