local util = require 'lspconfig/util'

local css_lsp = {}

function css_lsp:config()
  return {
    cmd = { 'vscode-css-language-server', '--stdio' },
    filetypes = { 'css', 'scss', 'less' },
    root_dir = function(fname)
      return util.root_pattern('package.json', '.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
    settings = {
      css = {
        validate = true
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      }
    }
  }
end

return css_lsp