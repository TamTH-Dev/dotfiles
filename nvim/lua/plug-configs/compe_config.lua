local compe = require 'compe'

local api = vim.api
local map = api.nvim_set_keymap

local options = { expr = true }

map('i', '<Tab>', 'v:lua.tab_complete()', options)
map('s', '<Tab>', 'v:lua.tab_complete()', options)
map('i', '<S-Tab>', 'v:lua.s_tab_complete()', options)
map('s', '<S-Tab>', 'v:lua.s_tab_complete()', options)

compe.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}
local replace_termcodes = function(str)
  return api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return replace_termcodes('<C-n>')
  elseif vim.fn.call('vsnip#available', {1}) == 1 then
    return replace_termcodes('<Plug>(vsnip-expand-or-jump)')
  elseif check_back_space() then
    return replace_termcodes('<Tab>')
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return replace_termcodes('<C-p>')
  elseif vim.fn.call('vsnip#jumpable', {-1}) == 1 then
    return replace_termcodes('<Plug>(vsnip-jump-prev)')
  else
    return replace_termcodes('<S-Tab>')
  end
end
