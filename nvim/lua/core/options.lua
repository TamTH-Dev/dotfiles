local options = vim.opt
local global = vim.g

-- Core options
options.backup = false
options.formatoptions = options.formatoptions - 'ocr'
options.hidden = true
options.history = 50
options.joinspaces = false
options.lazyredraw = true
options.mouse = options.mouse + 'a'
options.sessionoptions = 'blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal'
options.shell = '/bin/bash'
options.splitbelow = true
options.splitright = true
options.swapfile = false
options.switchbuf = 'useopen'
options.termguicolors = true
options.updatetime = 250
options.undofile = false
options.writebackup = false

-- User options
local user_options = require 'core.utils'.load_config().options
for key, value in pairs(user_options) do
  options[key] = value
end

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
