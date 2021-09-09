local util = require 'lspconfig/util'

local json_lsp = {}

function json_lsp:config()
  return {
    cmd = { "vscode-json-language-server", "--stdio" },
    filetypes = { "json" },
    init_options = {
      provideFormatter = true
    },
    root_dir = function(fname)
      local root_files = {
        'package.json',
        'tsconfig.json',
        'jsconfig.json',
        '.git',
      }
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
  }
end

return json_lsp
