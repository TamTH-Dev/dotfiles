local global = vim.g
local cmd = vim.cmd
local api = vim.api

global.dashboard_custom_header = {
    '          ▀████▀▄▄              ▄█ ',
    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    '   █   █  █      ▄▄           ▄▀   ',
}

global.dashboard_custom_section = {
  a = {
    description = { '  Find File           ' },
    command = 'Telescope find_files',
  },
  b = {
    description = { '  Recent Projects     ' },
    command = 'Telescope projects',
  },
  c = {
    description = { '  Recently Used Files ' },
    command = 'Telescope oldfiles',
  },
  d = {
    description = { '  Find Word           ' },
    command = 'Telescope live_grep',
  },
  e = {
    description = { '  Configuration       ' },
    command = ''
  },
}

cmd "let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))"

api.nvim_exec(
  [[
    let g:dashboard_custom_footer = [ 'Neovim loaded '..packages..' plugins ', '', 'Stay Hungry. Stay Foolish' ]
  ]],
  false
)
