local util = require 'lspconfig/util'

local yaml_lsp = {}

function yaml_lsp:config()
  return {
    cmd = { 'ansible-language-server', '--stdio' },
    filetypes = { 'yaml' },
    root_dir = function(fname)
      local root_files = {
        '*.yml',
        '*.yaml',
      }
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
    settings = {
      ansible = {
        ansible = {
          path = 'ansible'
        },
        ansibleLint = {
          enabled = false,
          path = 'ansible-lint'
        },
        python = {
          interpreterPath = 'python'
        }
      }
    }
  }
end

return yaml_lsp
