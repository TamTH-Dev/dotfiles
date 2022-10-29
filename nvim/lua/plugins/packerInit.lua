local cmd = vim.cmd

cmd 'packadd packer.nvim'

local is_packer_loaded, packer = pcall(require, 'packer')

if not is_packer_loaded then
   local packer_path = vim.fn.stdpath 'data' .. '/site/pack/packer/opt/packer.nvim'

   print 'Cloning packer..'
   -- remove the dir before cloning
   vim.fn.delete(packer_path, 'rf')
   vim.fn.system {
      'git',
      'clone',
      'https://github.com/wbthomason/packer.nvim',
      '--depth',
      '20',
      packer_path,
   }

   cmd 'packadd packer.nvim'
   is_packer_loaded, packer = pcall(require, 'packer')

   if is_packer_loaded then
      print 'Packer cloned successfully.'
   else
      error('Couldn\'t clone packer !\nPacker path: ' .. packer_path .. '\n' .. packer)
   end
end

packer.init {
   display = {
      open_fn = function()
         return require('packer.util').float({ border = 'rounded' })
      end,
      prompt_border = 'rounded',
   },
   git = {
      clone_timeout = 600, -- Timeout, in seconds, for git clones
   },
   auto_clean = true,
   compile_on_sync = true,
   auto_reload_compiled = true
}

return packer
