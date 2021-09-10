local options = vim.opt
local global = vim.g
local cmd = vim.api.nvim_command

global.tokyonight_style = 'night'

options.backup = false
options.belloff = 'all'
options.clipboard = options.clipboard + 'unnamedplus'
options.completeopt = 'menu,menuone,noselect,noinsert'
options.expandtab = true
options.formatoptions = options.formatoptions - 'c'
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

cmd('au BufEnter * set fo-=c fo-=r fo-=o')
cmd('colorscheme tokyonight')
cmd('noswapfile')
cmd('syntax enable')

local set_4_spaces_for_specific_file_type = function(file_type)
	if not file_type then return nil end
	local command = 'autocmd Filetype '
	command = command .. file_type
	command = command .. ' setlocal tabstop=4 shiftwidth=4 softtabstop=4'
	cmd(command)
end

set_4_spaces_for_specific_file_type('python')
set_4_spaces_for_specific_file_type('c')
set_4_spaces_for_specific_file_type('cpp')
set_4_spaces_for_specific_file_type('java')
set_4_spaces_for_specific_file_type('php')
set_4_spaces_for_specific_file_type('sh')
set_4_spaces_for_specific_file_type('text')
