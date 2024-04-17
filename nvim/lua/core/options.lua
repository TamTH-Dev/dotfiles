local options = vim.opt
local global = vim.g

--[[ Core options ]]
options.backup = false
options.belloff = "all"
options.bg = "dark"
options.clipboard = "unnamedplus"
options.cmdheight = 1
options.completeopt = { "menuone", "noselect" }
options.cursorline = false
options.expandtab = true
options.fileencoding = "utf-8"
options.formatoptions = options.formatoptions - "ocr"
options.hidden = true
options.history = 50
options.hlsearch = true
options.ignorecase = true
options.incsearch = true
options.joinspaces = false
options.lazyredraw = true
options.magic = true
options.mouse = "a"
options.number = true
options.numberwidth = 4
options.pumheight = 10
options.relativenumber = true
options.scrolloff = 8
options.sessionoptions = "blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"
options.shell = "/bin/bash"
options.shiftwidth = 2
options.showmode = false
options.showtabline = 2
options.sidescrolloff = 8
options.smartcase = true
options.smartindent = true
options.smarttab = true
options.softtabstop = 2
options.splitbelow = true
options.splitright = true
options.swapfile = false
options.switchbuf = "useopen"
options.tabstop = 2
options.termguicolors = true
options.timeoutlen = 500
options.updatetime = 250
options.undofile = false
options.wrap = true
options.writebackup = false

global.skip_ts_context_commentstring_module = true

--[[ Disabled builtin plugins ]]
local disabled_built_ins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
	global["loaded_" .. plugin] = 1
end
