local installed_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(installed_path)) > 0 then
	vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", installed_path })
	vim.cmd([[packadd packer.nvim]])
end

local is_packer_loaded, packer = pcall(require, "packer")
if not is_packer_loaded then
	return
end

packer.init({
	display = {
		prompt_border = "rounded",
		working_sym = "", -- The symbol for a plugin being installed/updated
		error_sym = "✗", -- The symbol for a plugin with an error in installation/updating
		done_sym = "", -- The symbol for a plugin which has completed installation/updating
		removed_sym = "", -- The symbol for an unused plugin which was removed
		moved_sym = "", -- The symbol for a plugin which was moved (e.g. from opt to start)
		header_sym = "", -- The symbol for the header line in packer's display
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		--[[ Timeout, in seconds, for git clones ]]
		clone_timeout = 600,
	},
	auto_clean = true,
	auto_reload_compiled = true,
	autoremove = true,
	compile_on_sync = true,
})

return packer
