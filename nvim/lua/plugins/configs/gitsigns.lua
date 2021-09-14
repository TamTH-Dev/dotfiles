local is_gitsigns_loaded, gitsigns = pcall(require, 'gitsigns')
if not is_gitsigns_loaded then
   return
end

gitsigns.setup {
  numhl = false,
  signcolumn = false,
  signs = {
    add = { hl = 'DiffAdd', text = '│', numhl = 'GitSignsAddNr' },
    change = { hl = 'DiffChange', text = '│', numhl = 'GitSignsChangeNr' },
    changedelete = { hl = 'DiffChange', text = '~', numhl = 'GitSignsChangeNr' },
    delete = { hl = 'DiffDelete', text = '_', numhl = 'GitSignsDeleteNr' },
    topdelete = { hl = 'DiffDelete', text = '‾', numhl = 'GitSignsDeleteNr' },
  },
  status_formatter = nil, -- Use default
  watch_index = { interval = 1000, follow_files = true },
  sign_priority = 6,
  debug_mode = false,
  current_line_blame = false,
  update_debounce = 100,
  word_diff = false,
}
