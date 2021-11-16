local M = {}

M.ui, M.options, M.mappings = {}, {}, {}

M.ui = {
  theme = 'tokyonight', -- Default colorscheme
  style = 'storm', -- Available: night, storm, day
  dark_sidebar = false, -- Only available for tokyonight theme
  dark_float = false, -- Only available for tokyonight theme
}

-- User custom options, can add more options. See ":help options" for more options
-- Note: Be careful when adding options, it will overwrite default options and may lead to some unexpected problems
M.options = {
  belloff = 'all',
  clipboard = 'unnamedplus',
  completeopt = 'menu,menuone,noinsert',
  expandtab = true,
  ic = true,
  laststatus = 2,
  magic = true,
  number = true,
  numberwidth = 4,
  relativenumber = true,
  shiftwidth = 2,
  showmode = false,
  smartcase = true,
  smartindent = true,
  smarttab = true,
  softtabstop = 2,
  tabstop = 2,
}

-- Common mappings
M.mappings.common = {
  leader = ',', -- Leader key
  save_buffer = '<leader>w', -- Save buffer
  quit_buffer = '<leader>q', -- Quit buffer
  exit_modes = 'jj', -- Exit modes. Ex: insert, visual, command
  split_window_vertically = '<leader>g/', -- Vertical split
  split_window_horizontally = '<leader>g\\', -- Horizontal split
  move_to_above_window = '<A-k>', -- Move to above window
  move_to_right_window = '<A-l>', -- Move to right window
  move_to_below_window = '<A-j>', -- Move to below window
  move_to_left_window = '<A-h>', -- Move to left window
  indent_block = '<Tab>', -- Indent block in visual mode
  outdent_block = '<S-Tab>', -- Outdent block in visual mode
  turn_off_highlight = '<leader><space>', -- Turn off highlight
  open_new_buffer = '<leader>t', -- Open new buffer
}

-- Plugin mappings
M.mappings.plugin = {
  -- comment = {
    -- toggle = '<leader>cl', -- trigger comment on a single/selected lines/number prefix
  -- },
}

return M
