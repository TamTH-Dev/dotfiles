local global = vim.g

-- Don't auto open tree on specific filetypes
global.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard', 'alpha' }

-- Closes the tree when it's the last window
global.nvim_tree_auto_close = 1

global.nvim_tree_root_folder_modifier = ':~'

-- Show lsp diagnostics in the signcolumn
global.nvim_tree_lsp_diagnostics = 0

-- Custom icons
global.nvim_tree_icons = {
  default= '',
  symlink= '',
  git= {
    unstaged= '±',
    staged= '',
    unmerged= '',
    renamed= '',
    untracked= '',
    deleted= '',
    ignored= ''
  },
  folder= {
    arrow_open= '',
    arrow_closed= '',
    default= '',
    open= '',
    empty= '',
    empty_open= '',
    symlink= '',
    symlink_open= '',
  },
  lsp= {
    error= '',
    warning= '',
    info= '',
    hint= '',
  }
}
