local telescope = require 'telescope'
local actions = require 'telescope.actions'
local sorters = require 'telescope.sorters'
local previewers = require 'telescope.previewers'

local map = vim.api.nvim_set_keymap
local nvim_command = vim.api.nvim_command

local options = { silent = true }

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

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close,
      }
    },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = '  ',
    selection_caret = '  ',
    entry_prefix = '  ',
    initial_mode = 'insert',
    selection_strategy = 'reset',
    sorting_strategy = 'ascending',
    layout_strategy = 'horizontal',
    layout_config = {
      width = 0.75,
      prompt_position = 'top',
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  sorters.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  sorters.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = {'─', '│', '─', '│', '┌', '┐', '┘', '└'},
    -- borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    disable_devicons = false,
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' },
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    buffer_previewer_maker = previewers.buffer_previewer_maker
  }
}

map('n', '<C-p>', '<cmd>Telescope find_files<cr>', options)
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', options)
map('n', '<C-b>', '<cmd>Telescope buffers<cr>', options)

nvim_command('highlight TelescopeBorder guifg='..colors.blue)
nvim_command('highlight TelescopePromptPrefix guifg='..colors.orange)
nvim_command('highlight TelescopeNormal guifg='..colors.fg)
nvim_command('highlight TelescopeSelection guifg=#7aa2f7 guibg='..colors.bg)
nvim_command('highlight TelescopeSelectionCaret guifg=#ff9e64 guibg='..colors.bg)
nvim_command('highlight TelescopeMultiSelection guifg='..colors.fg)
nvim_command('highlight TelescopeMatching guifg='..colors.red)
