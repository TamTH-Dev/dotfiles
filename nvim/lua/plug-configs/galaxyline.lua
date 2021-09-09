local gl = require 'galaxyline'
local diagnostic = require 'galaxyline.provider_diagnostic'
local vcs = require 'galaxyline.provider_vcs'
local fileinfo = require 'galaxyline.provider_fileinfo'
local extensions = require 'galaxyline.provider_extensions'
local buffer = require 'galaxyline.provider_buffer'
local lspclient = require 'galaxyline.provider_lsp'
local condition = require 'galaxyline.condition'
-- local whitespace = require 'galaxyline.provider_whitespace'

local fn = vim.fn
local bo = vim.bo
local api = vim.api
local gls = gl.section

local DiagnosticError = diagnostic.get_diagnostic_error
local DiagnosticWarn = diagnostic.get_diagnostic_warn
local DiagnosticHint = diagnostic.get_diagnostic_hint
local DiagnosticInfo = diagnostic.get_diagnostic_info

local GitBranch = vcs.get_git_branch
local DiffAdd = vcs.diff_add
local DiffModified = vcs.diff_modified
local DiffRemove = vcs.diff_remove

local LineColumn = fileinfo.line_column
local FileFormat = fileinfo.get_file_format
local FileEncode = fileinfo.get_file_encode
local FileSize = fileinfo.get_file_size
local FileIcon = fileinfo.get_file_icon
local FileName = fileinfo.get_current_file_name
local LinePercent = fileinfo.current_line_percent

local ScrollBar = extensions.scrollbar_instance

local BufferIcon  = buffer.get_buffer_type_icon
local BufferNumber = buffer.get_buffer_number
local FileTypeName = buffer.get_buffer_filetype

local GetLspClient = lspclient.get_lsp_client

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

-- Supporters
local buffer_not_empty = condition.buffer_not_empty
local hide_in_width = condition.hide_in_width
local check_git_workspace = condition.check_git_workspace

local is_show_git_diff = function()
  return hide_in_width() and check_git_workspace()
end

function is_valid_file_type()
  local f_type = bo.filetype
  if not f_type or f_type == '' then
      return false
  end
  return true
end

local get_mode_color = function()
  local mode_colors = {
    n = colors.cyan,
    i = colors.green,
    c = colors.orange,
    V = colors.magenta,
    [''] = colors.magenta,
    v = colors.magenta,
    R = colors.red,
  }
  local color = mode_colors[fn.mode()]
  if color == nil then
    color = colors.red
  end
  return color
end

-- Short line list
gl.short_line_list = { 'nvim-tree', 'packer' }

-- Left side
gls.left[1] = {
  Bar = {
    provider = function() return '▋' end,
    highlight = { colors.cyan, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg },
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {
        n = 'NORMAL',
        i = 'INSERT',
        c = 'COMMAND',
        V = 'VISUAL',
        [''] = 'VISUAL',
        v = 'VISUAL',
        R = 'REPLACE',
      }
      api.nvim_command('hi GalaxyViMode guifg='..get_mode_color())
      local alias_mode = alias[fn.mode()]
      if alias_mode == nil then
        alias_mode = fn.mode()
      end
      return alias_mode..' '
    end,
    highlight = { colors.bg, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg },
  },
}

gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg },
  },
}

gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = buffer_not_empty,
    highlight = { colors.fg, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg },
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() 
      return '' 
    end,
    condition = check_git_workspace,
    highlight = { colors.orange, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg },
  }
}

gls.left[6] = {
  GitBranch = {
    provider = function()
      local branch_name = GitBranch()
      if (string.len(branch_name) > 28) then
        return string.sub(branch_name, 1, 25)..'...'
      end
      return branch_name
    end,
    condition = check_git_workspace,
    highlight = { colors.fg,colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg },
  }
}

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = is_show_git_diff,
    icon = '  ',
    highlight = { colors.green, colors.bg },
  }
}

gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = is_show_git_diff,
    icon = '  ',
    highlight = { colors.orange, colors.bg },
  }
}

gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = is_show_git_diff,
    icon = '  ',
    highlight = { colors.red,colors.bg },
  }
}

gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = { colors.red, colors.bg },
  }
}

gls.left[11] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = { colors.orange, colors.bg },
  }
}

gls.left[12] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = { colors.magenta, colors.bg },
  }
}

gls.left[13] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = { colors.blue, colors.bg },
  }
}

-- Right side
gls.right[1]= {
  BufferNumber = {
    provider = 'BufferNumber',
    icon = '﬘ ',
    highlight = { colors.green, colors.bg },
  }
}

gls.right[2]= {
  GetLspClient = {
    provider = 'GetLspClient',
    highlight = { colors.yellow, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg },
  }
}

gls.right[3]= {
  FileFormat = {
    provider = function() 
      return bo.filetype
    end,
    highlight = { colors.blue, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg },
  }
}

gls.right[4] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = { colors.magenta, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg },
  },
}

gls.right[5] = {
  PerCent = {
    provider = 'LinePercent',
    highlight = { colors.red, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg },
  }
}

gls.right[6] = {
  ScrollBar = {
    provider = function()
      return ScrollBar()..' '
    end,
    highlight = { colors.red, colors.bg },
  }
}

-- Short status line
gls.short_line_left[1] = {
  BufferType = {
    condition = is_valid_file_type,
    provider = 'FileTypeName',
    highlight = { colors.fg, colors.bg },
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    condition = is_valid_file_type,
    provider= 'BufferIcon',
    highlight = { colors.green, colors.bg },
  }
}

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
