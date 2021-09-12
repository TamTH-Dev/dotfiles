local is_cmp_loaded, cmp = pcall(require, 'cmp')
local is_cmp_compare_loaded, compare = pcall(require, 'cmp.config.compare')
local is_cmp_types_loaded, types = pcall(require, 'cmp.types')
local is_lua_snip_loaded, luasnip = pcall(require, 'luasnip')
if not (is_cmp_loaded or is_lua_snip_loaded or is_cmp_compare_loaded or is_cmp_types_loaded) then
  return
end

local api = vim.api
local fn = vim.fn

local WIDE_HEIGHT = 40

-- Icon for custom item kinds
local icons = {
  Class = '',
  Color = '',
  Constant = '',
  Constructor = '',
  Enum = '練',
  EnumMember = '',
  Event = '',
  Field = '',
  File = '',
  Folder = '',
  Function = '',
  Interface = '',
  Keyword = ' ',
  Method = '',
  Module = '',
  Operator = '',
  Property = '',
  Reference = '',
  Snippet = '',
  Struct = '',
  Text = '',
  TypeParameter = '',
  Unit = '塞',
  Value = '',
  Variable = '',
}

local check_back_space = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local replace_termcodes = function(str)
  return api.nvim_replace_termcodes(str, true, true, true)
end

cmp.setup {
  completion = {
    autocomplete = {
      types.cmp.TriggerEvent.TextChanged,
    },
    completeopt = 'menu,menuone,noselect,noinsert',
    keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
    keyword_length = 1,
    get_trigger_characters = function(trigger_characters)
      return trigger_characters
    end
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  preselect = types.cmp.PreselectMode.Item,
  documentation = {
    border = { '', '', '', ' ', '', '', '', ' ' },
    winhighlight = 'NormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder',
    maxwidth = math.floor((WIDE_HEIGHT * 2) * (vim.o.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
    maxheight = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / vim.o.lines)),
  },
  confirmation = {
    default_behavior = types.cmp.ConfirmBehavior.Insert,
    get_commit_characters = function(commit_characters)
      return commit_characters
    end
  },
  sorting = {
    priority_weight = 2,
    comparators = {
      compare.offset,
      compare.exact,
      compare.score,
      compare.kind,
      compare.sort_text,
      compare.length,
      compare.order,
    }
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if fn.pumvisible() == 1 then
        fn.feedkeys(replace_termcodes('<C-n>'), 'n')
      elseif luasnip.expand_or_jumpable() then
        fn.feedkeys(replace_termcodes('<Plug>luasnip-expand-or-jump'), '')
      elseif check_back_space() then
        vim.fn.feedkeys(replace_termcodes('<Tab>'), 'n')
      else
        fallback()
      end
    end, {
      'i',
      's',
    }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if fn.pumvisible() == 1 then
        fn.feedkeys(replace_termcodes('<C-p>'), 'n')
      elseif luasnip.jumpable(-1) then
        fn.feedkeys(replace_termcodes('<Plug>luasnip-jump-prev'), '')
      else
        fallback()
      end
    end, {
      'i',
      's',
    }),
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = icons[vim_item.kind]
      vim_item.menu = ({
        nvim_lsp = '(LSP)',
        emoji = '(Emoji)',
        path = '(Path)',
        calc = '(Calc)',
        cmp_tabnine = '(Tabnine)',
        vsnip = '(Snippet)',
        luasnip = '(Snippet)',
        buffer = '(Buffer)',
      })[entry.source.name]
      vim_item.dup = ({
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
      })[entry.source.name] or 0
      return vim_item
    end,
  },
  experimental = {
    ghost_text = false,
  },
  sources = {
    { name = 'path' },
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'treesitter' }
  }
}
