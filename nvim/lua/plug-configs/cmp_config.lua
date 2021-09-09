local cmp = require 'cmp'
local compare = require 'cmp.config.compare'
local types = require 'cmp.types'
local luasnip = require 'luasnip'

local api = vim.api
local fn = vim.fn
local WIDE_HEIGHT = 40

local replace_termcodes = function(str)
  return api.nvim_replace_termcodes(str, true, true, true)
end

cmp.setup {
  completion = {
    autocomplete = {
      types.cmp.TriggerEvent.TextChanged,
    },
    completeopt = 'menuone,noselect,noinsert',
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
  event = {},
  mapping = {
    ['<C-m>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if fn.pumvisible() == 1 then
        fn.feedkeys(replace_termcodes('<C-n>'), 'n')
      elseif luasnip.expand_or_jumpable() then
        vim.fn.feedkeys(replace_termcodes('<Plug>luasnip-expand-or-jump'), '')
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
        vim.fn.feedkeys(replace_termcodes('<Plug>luasnip-jump-prev'), '')
      else
        fallback()
      end
    end, {
      'i',
      's',
    }),
  },
  formatting = {
    deprecated = true,
    format = function(_, vim_item)
      return vim_item
    end
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
