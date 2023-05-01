local is_packer_init_loaded, packer = pcall(require, "plugins.packerInit")

if not is_packer_init_loaded then
  return
end

packer.startup(function()
  local use = packer.use

  --[[ Plugins manager ]]
  use({
    "wbthomason/packer.nvim",
    commit = "1d0cf98",
  })
end)
