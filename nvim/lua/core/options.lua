local options = vim.opt
local global = vim.g

-- Style for tokyonight colorscheme
global.tokyonight_style = 'night'

options.backup = false
options.belloff = 'all'
options.clipboard = 'unnamedplus'
options.completeopt = 'menu,menuone,noselect,noinsert'
options.expandtab = true
options.formatoptions = options.formatoptions - 'orc'
options.hidden = true
options.history = 50
options.ic = true
options.joinspaces = false
options.laststatus = 2
options.lazyredraw = true
options.magic = true
options.mouse = options.mouse + 'a'
options.number = true
options.numberwidth = 4
options.relativenumber = true
options.shell = '/bin/bash'
options.shiftwidth = 2
options.showmode = false
options.smartcase = true
options.smartindent = true
options.smarttab = true
options.softtabstop = 2
options.splitbelow = true
options.splitright = true
options.switchbuf = 'useopen'
options.tabstop = 2
options.termguicolors = true
options.updatetime = 300
options.undofile = false
options.writebackup = false

-- Disable some builtin vim plugins
local disabled_built_ins = {
   '2html_plugin',
   'getscript',
   'getscriptPlugin',
   'gzip',
   'logipat',
   'netrw',
   'netrwPlugin',
   'netrwSettings',
   'netrwFileHandlers',
   'matchit',
   'tar',
   'tarPlugin',
   'rrhelper',
   'spellfile_plugin',
   'vimball',
   'vimballPlugin',
   'zip',
   'zipPlugin',
}

for _, plugin in pairs(disabled_built_ins) do
   global['loaded_' .. plugin] = 1
end
