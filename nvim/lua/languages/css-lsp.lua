local lspconfig = require 'lspconfig'
local util = require 'lspconfig/util'
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.cssls.setup {
  capabilities = capabilities,
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
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
