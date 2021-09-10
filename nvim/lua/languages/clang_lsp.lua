local util = require 'lspconfig/util'

local clang_lsp = {}

function clang_lsp:config()
  return {
    cmd = { 'clangd', '--background-index' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = function(fname)
      local root_files = {
        'compile_commands.json',
        'compile_flags.txt',
        '.git',
      }
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
  }
end

return clang_lsp
