local cmd = vim.cmd

cmd("packadd packer.nvim")

local is_packer_loaded, packer = pcall(require, "packer")

if not is_packer_loaded then
  local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

  print("Cloning packer..")
  --[[ remove the dir before cloning ]]
  vim.fn.delete(packer_path, "rf")
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/wbthomason/packer.nvim",
    "--depth",
    "20",
    packer_path,
  })

  cmd("packadd packer.nvim")
  is_packer_loaded, packer = pcall(require, "packer")

  if is_packer_loaded then
    print("Packer cloned successfully.")
  else
    error("Couldn't clone packer !\nPacker path: " .. packer_path .. "\n" .. packer)
  end
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
