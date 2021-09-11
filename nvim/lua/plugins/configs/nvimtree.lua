local utils = require "core.utils"

local map = utils.map
local cmd = vim.cmd
local global = vim.g

map('n', '<C-n>', ':NvimTreeToggle<cr>')
map('n', '<leader>r', ':NvimTreeRefresh<cr>')

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

cmd('highlight NvimTreeFolderIcon guifg=#7aa2f7')
