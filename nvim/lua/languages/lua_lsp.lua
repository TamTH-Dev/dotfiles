local lua_lsp = {}

function lua_lsp:config()
  return {
    cmd = {
      vim.fn.expand("$HOME")..'/lua-language-server/bin/Linux/lua-language-server',
      '-E',
      vim.fn.expand("$HOME")..'/lua-language-server/main.lua'
    },
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = vim.split(package.path, ";"),
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          enable = true,
          globals = { 'vim', 'nvim' },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = {
            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
          }
        },
      },
    }
  }
end

return lua_lsp
