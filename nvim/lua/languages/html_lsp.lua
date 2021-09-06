local util = require 'lspconfig/util'

local html_lsp = {}

function html_lsp:config()
  return {
    cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = { 'html' },
    init_options = {
      configurationSection = { 'html', 'css', 'javascript' },
      embeddedLanguages = {
        css = true,
        javascript = true
      }
    },
    root_dir = function(fname)
      return util.root_pattern('package.json', '.git')(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end
  }
end

return html_lsp
