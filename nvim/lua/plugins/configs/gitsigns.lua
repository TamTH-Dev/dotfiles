local is_gitsigns_loaded, gitsigns = pcall(require, 'gitsigns')
if not is_gitsigns_loaded then
   return
end

gitsigns.setup {
  keymaps = {
    -- Default keymap options
    buffer = true,
    noremap = true,
    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'" },
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'" },
    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',
  },
  numhl = false,
  signs = {
    add = { hl = 'DiffAdd', text = '│', numhl = 'GitSignsAddNr' },
    change = { hl = 'DiffChange', text = '│', numhl = 'GitSignsChangeNr' },
    changedelete = { hl = 'DiffChange', text = '~', numhl = 'GitSignsChangeNr' },
    delete = { hl = 'DiffDelete', text = '_', numhl = 'GitSignsDeleteNr' },
    topdelete = { hl = 'DiffDelete', text = '‾', numhl = 'GitSignsDeleteNr' },
  },
  status_formatter = nil, -- Use default
  watch_index = { interval = 100, follow_files = true },
  sign_priority = 6,
  debug_mode = false,
  current_line_blame = true,
  current_line_blame_opts = { delay = 1500 },
  update_debounce = 300,
  word_diff = true,
  diff_opts= { internal=true }
}
