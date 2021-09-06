local util = require 'lspconfig/util'

local ts_lsp = {}

local eslint = {
  lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
  lintStdin = true,
  lintFormats = {"%f:%l:%c: %m"},
  lintIgnoreExitCode = true,
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}

function ts_lsp:config()
  return {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
    init_options = {
      hostInfo = 'neovim'
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
    settings = {
      languages = {
        javascript = { eslint },
        javascriptreact = { eslint },
        ["javascript.jsx"] = { eslint },
        typescript = { eslint },
        ["typescript.tsx"] = { eslint },
        typescriptreact = { eslint }
      }
    },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescript.tsx",
      "typescriptreact"
    }
  }
end

return ts_lsp
