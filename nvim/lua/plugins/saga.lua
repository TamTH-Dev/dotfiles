local saga = require 'lspsaga'

local options = { silent = true }

-- show hover doc
vim.api.nvim_set_keymap('n', '<leader>gk', ':Lspsaga hover_doc<cr>', options)

-- code action
vim.api.nvim_set_keymap('n', '<leader>ga', ':Lspsaga code_action<CR>', options)
vim.api.nvim_set_keymap('v', '<leader>ga', ':<C-U>Lspsaga range_code_action<CR>', options)

-- show signature help
vim.api.nvim_set_keymap('n', '<leader>gs', ':Lspsaga signature_help<cr>', options)

-- show diagnostic
vim.api.nvim_set_keymap('n', '<leader>gl', ':Lspsaga show_line_diagnostics<CR>', options)

-- rename
vim.api.nvim_set_keymap('n', '<leader>gr', ':Lspsaga rename<cr>', options)

-- jump diagnostic
vim.api.nvim_set_keymap('n', '<leader>gn', ':Lspsaga diagnostic_jump_next<cr>', options)
vim.api.nvim_set_keymap('n', '<leader>gp', ':Lspsaga diagnostic_jump_prev<cr>', options)

-- lsp provider to find the cursor word definition and reference
vim.api.nvim_set_keymap('n', '<leader>gf', ':Lspsaga lsp_finder<cr>', options)

saga.init_lsp_saga {
  use_saga_diagnostic_sign = true,
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  dianostic_header_icon = ' ',
  code_action_icon = ' ',
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true
  },
  finder_definition_icon = ' ',
  finder_reference_icon = ' ',
  max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
  finder_action_keys = {
    open = '<cr>',
    vsplit = '<C-v>',
    split = '<C-x>',
    quit = 'q',
    scroll_down = '<C-j>',
    scroll_up = '<C-k>'
  },
  code_action_keys = {
    quit = 'q',
    exec = '<cr>'
  },
  rename_action_keys = {
    quit = '<C-c>',
    exec = '<cr>'
  },
  definition_preview_icon = ' ',
  border_style = 'single', -- 'single' 'double' 'round' 'plus'
  rename_prompt_prefix = '➤'
}
