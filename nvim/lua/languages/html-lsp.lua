local lspconfig = require 'lspconfig'
local util = require 'lspconfig/util'
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.html.setup {
  capabilities = capabilities,
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" },
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    }
  },
  root_dir = function(fname)
    return util.root_pattern('package.json', '.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
  end,
  settings = {}
}
