local is_telescope_loaded, telescope = pcall(require, 'telescope')
local is_telescope_actions_loaded, actions = pcall(require, 'telescope.actions')
local is_telescope_sorters_loaded, sorters = pcall(require, 'telescope.sorters')
local is_telescope_previewers_loaded, previewers = pcall(require, 'telescope.previewers')
if not (is_telescope_loaded or is_telescope_actions_loaded or is_telescope_sorters_loaded or is_telescope_previewers_loaded) then
  return
end

local utils = require "core.utils"

local map = utils.map
local cmd = vim.cmd

local opts = { silent = true }

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

map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<C-b>', '<cmd>Telescope buffers<cr>', opts)

cmd('highlight TelescopeBorder guifg='..colors.blue)
cmd('highlight TelescopePromptPrefix guifg='..colors.magenta)
cmd('highlight TelescopeNormal guifg='..colors.fg)
cmd('highlight TelescopeSelection guifg='..colors.blue)
cmd('highlight TelescopeSelectionCaret guifg='..colors.blue)
cmd('highlight TelescopeMultiSelection guifg='..colors.fg)
cmd('highlight TelescopeMatching guifg='..colors.yellow)
