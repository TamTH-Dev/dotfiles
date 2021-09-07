local nvim_lsp = require 'lspconfig'
local configs = require 'lspconfig/configs'

local ts_lsp = require 'languages/ts_lsp'
local python_lsp = require 'languages/python_lsp'
local html_lsp = require 'languages/html_lsp'
local css_lsp = require 'languages/css_lsp'

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  local opts = { noremap = true, silent = true } -- Mappings
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

-- Update capabilities
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Enable the language servers
local servers = {
  tsserver = ts_lsp:config(),
  pyright = python_lsp:config(),
  html = html_lsp:config(),
  cssls = css_lsp:config()
}

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


-- local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

-- for type, icon in pairs(signs) do
--   local hl = "LspDiagnosticsSign" .. type
--   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
-- end
