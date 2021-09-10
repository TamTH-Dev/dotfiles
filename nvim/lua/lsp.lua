local nvim_lsp = require 'lspconfig'
local configs = require 'lspconfig/configs'
local cmp = require 'cmp_nvim_lsp'

local ts_lsp = require 'languages/ts_lsp'
local python_lsp = require 'languages/python_lsp'
local clang_lsp = require 'languages/clang_lsp'
local java_lsp = require 'languages/java_lsp'
local lua_lsp = require 'languages/lua_lsp'
local yaml_lsp = require 'languages/yaml_lsp'
local json_lsp = require 'languages/json_lsp'
local html_lsp = require 'languages/html_lsp'
local css_lsp = require 'languages/css_lsp'

local lsp = vim.lsp
local api = vim.api
local cmd = api.nvim_command

-- Colors
local colors = {
  bg = '#24283b',
  fg = '#c0caf5',
  red = '#f7768e',
  green = '#9ece6a',
  orange = '#ff9e64',
  blue = '#7aa2f7',
  magenta = '#bb9af7',
  cyan = '#7dcfff',
  yellow = '#e0af68',
}

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
  local function buf_set_keymap(...) api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) api.nvim_buf_set_option(bufnr, ...) end
  local opts = { noremap = true, silent = true } -- Mappings
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
end

-- Enabled language servers
local servers = {
  tsserver = ts_lsp:config(), -- Typescript
  pyright = python_lsp:config(), -- Python
  clangd = clang_lsp:config(), -- C, C++
  jdtls = java_lsp:config(), -- Java
  sumneko_lua = lua_lsp:config(), -- Lua
  ansiblels = yaml_lsp:config(), -- Yaml
  jsonls = json_lsp:config(), -- JSON
  html = html_lsp:config(), -- Html
  cssls = css_lsp:config() -- Css
}

-- Update capabilities
local capabilities = lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  },
}
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = cmp.update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
for server, config in pairs(servers) do
  if config then
    configs[server] = {
      default_config = config
    }
  end
  if nvim_lsp[server] then
    nvim_lsp[server].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

lsp.handlers['textDocument/publishDiagnostics'] = lsp.with(
    lsp.diagnostic.on_publish_diagnostics,
    {
        signs = true,
        virtual_text = {
          prefix = '',
          spacing = 0,
        },
        underline = true,
        severity_sort = true,
    }
)

-- Change highlight color of diagnostics
cmd('highlight LspDiagnosticsDefaultError guifg='..colors.red)
cmd('highlight LspDiagnosticsDefaultWarning guifg='..colors.orange)
cmd('highlight LspDiagnosticsDefaultInformation guifg='..colors.magenta)
cmd('highlight LspDiagnosticsDefaultHint guifg='..colors.blue)
