
--[[ Custom key bindings ]]
--[[ Leader ]]
vim.g.mapleader = ","
--[[ Save buffer ]]
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w!<CR>", { noremap = true, silent = true })
--[[ Quit buffer ]]
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>q<CR>", { noremap = true, silent = true })
--[[ Format buffer ]]
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })
--[[ Exit modes ]]
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
--[[ Split windows ]]
vim.api.nvim_set_keymap("n", "<leader>g/", "<cmd>vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>g\\", "<cmd>split<CR>", { noremap = true, silent = true })
--[[ Move between windows ]]
vim.api.nvim_set_keymap("n", "<A-k>", "<C-W>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-W>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-h>", "<C-W>h", { noremap = true, silent = true })
--[[ Turn off highlight ]]
vim.api.nvim_set_keymap("n", "<leader><space>", "<cmd>nohl<CR>", { noremap = true, silent = true })
--[[ Use tab with text block ]]
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
--[[ Open new buffer ]]
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>tabnew<CR>", { noremap = true, silent = true })
--[[ Move vertically by visual line ]]
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })
--[[ A little bit upgrade for vertical movements ]]
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
--[[ Paste in visual without removing current buffer ]]
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', { noremap = true, silent = true })


--[[ Custom options ]]
vim.opt.backup = false
vim.opt.belloff = "all"
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.cursorline = false
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.formatoptions = vim.opt.formatoptions - "ocr"
vim.opt.hidden = true
vim.opt.history = 50
vim.opt.hlsearch = true
vim.opt.ignorecase = false
vim.opt.incsearch = true
vim.opt.joinspaces = false
vim.opt.lazyredraw = true
vim.opt.magic = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"
vim.opt.shell = "/bin/bash"
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.showtabline = 0
vim.opt.sidescrolloff = 8
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.switchbuf = "useopen"
vim.opt.tabstop = 4
vim.opt.termguicolors = false
vim.opt.timeoutlen = 500
vim.opt.updatetime = 250
vim.opt.undofile = false
vim.opt.wrap = true
vim.opt.writebackup = false


--[[ Custom highlight colors to match the base terminal theme ]]
vim.cmd("colorscheme default")
vim.cmd([[
  highlight Normal       ctermfg=NONE	ctermbg=NONE
  highlight NonText      ctermfg=NONE	ctermbg=NONE
  highlight EndOfBuffer  ctermfg=NONE	ctermbg=NONE
  highlight LineNr       ctermfg=8		ctermbg=NONE
  highlight SignColumn   ctermfg=NONE	ctermbg=NONE
  highlight FoldColumn   ctermbg=NONE
  highlight VertSplit    ctermfg=7		ctermbg=NONE
]])
vim.cmd([[
  highlight StatusLine   ctermfg=14		ctermbg=0
  highlight StatusLineNC ctermfg=14		ctermbg=0
  highlight CursorLineNr ctermfg=14		ctermbg=0
  highlight Pmenu        ctermfg=NONE   ctermbg=NONE
  highlight PmenuSel     ctermfg=NONE   ctermbg=NONE
]])
vim.cmd([[
  highlight Comment      ctermfg=8
  highlight Constant     ctermfg=3
  highlight Identifier   ctermfg=14
  highlight Statement    ctermfg=11
  highlight PreProc      ctermfg=5
  highlight Type         ctermfg=10
  highlight Special      ctermfg=6
  highlight Error        ctermfg=15		ctermbg=1
]])


--[[ Disable inserting comment on new line automatically ]]
vim.cmd([[au bufenter * set fo-=c fo-=r fo-=o]])


--[[ Set space for specific file types ]]
local set_spaces = function(file_type, space)
	if not file_type then
		return
	end
	if not space then
		space = 4
	end
	vim.cmd(table.concat({
		"autocmd filetype ",
		file_type,
		" setlocal tabstop=",
		space,
		" shiftwidth=",
		space,
		" softtabstop=",
		space,
	}))
end

set_spaces("python")
set_spaces("c")
set_spaces("cpp")
set_spaces("java")
set_spaces("php")
set_spaces("sh")
set_spaces("text")
