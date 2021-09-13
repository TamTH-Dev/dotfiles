local M = {}
local utils = require 'core.utils'

local map = utils.map

-- Plugins mappings
function M.nvimtree()
  map('n', '<C-n>', ':NvimTreeToggle<cr>')
  map('n', '<leader>r', ':NvimTreeRefresh<cr>')
end

function M.telescope()
  map('n', '<C-p>', '<cmd>Telescope find_files<cr>')
  map('n', '<C-f>', '<cmd>Telescope live_grep<cr>')
  map('n', '<C-b>', '<cmd>Telescope buffers<cr>')
end

function M.saga()
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

function M.bufferline()
  -- Move to previous/next
  map('n', '<leader><Tab>', ':BufferLineCycleNext<cr>')
  map('n', '<leader><S-Tab>', ':BufferLineCyclePrev<cr>')
  -- Re-order to previous/next
  map('n', '<leader>>', ' :BufferLineMoveNext<cr>')
  map('n', '<leader><', ':BufferLineMovePrev<cr>')
  -- Goto buffer in position...
  map('n', '<leader>1', ':BufferLineGoToBuffer 1<cr>')
  map('n', '<leader>2', ':BufferLineGoToBuffer 2<cr>')
  map('n', '<leader>3', ':BufferLineGoToBuffer 3<cr>')
  map('n', '<leader>4', ':BufferLineGoToBuffer 4<cr>')
  map('n', '<leader>5', ':BufferLineGoToBuffer 5<cr>')
  map('n', '<leader>6', ':BufferLineGoToBuffer 6<cr>')
  map('n', '<leader>7', ':BufferLineGoToBuffer 7<cr>')
  map('n', '<leader>8', ':BufferLineGoToBuffer 8<cr>')
  map('n', '<leader>9', ':BufferLineGoToBuffer 9<cr>')
  map('n', '<leader>10', ':BufferLineGoToBuffer 10<cr>')
end

function M.barbar()
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
