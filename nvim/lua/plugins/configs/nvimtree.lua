-- local present, _ = pcall(require, "nvim-tree")
-- if not present then
   -- return
-- end

local api = vim.api
local map = api.nvim_set_keymap
local cmd = vim.cmd
local global = vim.g

local opts = { silent = true }

map('n', '<C-n>', ':NvimTreeToggle<cr>', opts)
map('n', '<leader>r', ':NvimTreeRefresh<cr>', opts)

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
