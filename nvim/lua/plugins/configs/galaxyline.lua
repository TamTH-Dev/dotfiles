local present, gl = pcall(require, 'galaxyline')
local present2, vcs = pcall(require, 'galaxyline.provider_vcs')
local present3, extensions = pcall(require, 'galaxyline.provider_extensions')
local present4, condition = pcall(require, 'galaxyline.condition')
local present5, fileinfo = pcall(require, 'galaxyline.provider_fileinfo')

if not present then
   return
end
-- local gl = require 'galaxyline'
-- local vcs = require 'galaxyline.provider_vcs'
-- local extensions = require 'galaxyline.provider_extensions'
-- local condition = require 'galaxyline.condition'
-- local fileinfo = require 'galaxyline.provider_fileinfo'

local fn = vim.fn
local bo = vim.bo
local cmd = vim.api.nvim_command
local gls = gl.section

-- Supporters
local GitBranch = vcs.get_git_branch
local ScrollBar = extensions.scrollbar_instance
local buffer_not_empty = condition.buffer_not_empty
local hide_in_width = condition.hide_in_width
local check_git_workspace = condition.check_git_workspace
local file_icon_color = fileinfo.get_file_icon_color

local is_git_workspace_showed = function()
  return hide_in_width() and check_git_workspace()
end

local is_file_type_valid = function()
  local f_type = bo.filetype
  if not f_type or f_type == '' then
      return false
  end
  return true
end

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

local get_mode_color = function()
  local mode_colors = {
    n = colors.blue,
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

-- Left section
gls.left[1] = {
  EmptyBar = {
    provider = function()
      cmd('hi GalaxyEmptyBar guifg='..get_mode_color())
      return '▋'
    end,
    highlight = { colors.red, colors.bg },
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
      cmd('hi GalaxyViMode guifg='..get_mode_color())
      local alias_mode = alias[fn.mode()]
      if alias_mode == nil then
        alias_mode = fn.mode()
      end
      return alias_mode
    end,
    highlight = { colors.bg, colors.bg },
    separator = '  ',
    separator_highlight = { colors.bg, colors.bg }
  }
}

gls.left[3] ={
  FileIcon = {
    condition = buffer_not_empty,
    provider = 'FileIcon',
    highlight = { file_icon_color, colors.bg }
  }
}

gls.left[4] = {
  FileName = {
    condition = buffer_not_empty,
    provider = 'FileName',
    highlight = { colors.fg, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg }
  }
}

gls.left[5] = {
  GitIcon = {
    condition = is_git_workspace_showed,
    provider = function() return '' end,
    highlight = { colors.orange, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg }
  }
}

gls.left[6] = {
  GitBranch = {
    condition = is_git_workspace_showed,
    provider = function()
      local branch_name = GitBranch()
      if not branch_name then
        return 'Undefined'
      end
      if (branch_name and string.len(branch_name) > 28) then
        return string.sub(branch_name, 1, 25)..'...'
      end
      return branch_name
    end,
    highlight = { colors.fg,colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg }
  }
}

gls.left[7] = {
  DiffAdd = {
    condition = is_git_workspace_showed,
    provider = 'DiffAdd',
    icon = '  ',
    highlight = { colors.green, colors.bg }
  }
}

gls.left[8] = {
  DiffModified = {
    condition = is_git_workspace_showed,
    provider = 'DiffModified',
    icon = '  ',
    highlight = { colors.orange, colors.bg }
  }
}

gls.left[9] = {
  DiffRemove = {
    condition = is_git_workspace_showed,
    provider = 'DiffRemove',
    icon = '  ',
    highlight = { colors.red,colors.bg }
  }
}

gls.left[10] = {
  Space = {
    condition = is_git_workspace_showed,
    provider = 'WhiteSpace',
    highlight = { colors.cyan, colors.bg },
    separator = ' ',
    separator_highlight = { colors.bg, colors.bg }
  }
}

gls.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = ' ',
    highlight = { colors.red, colors.bg },
  }
}

gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = ' ',
    highlight = { colors.orange, colors.bg }
  }
}

gls.left[13] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = ' ',
    highlight = { colors.magenta, colors.bg }
  }
}

gls.left[14] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = ' ',
    highlight = { colors.blue, colors.bg }
  }
}

-- Right section
gls.right[1]= {
  BufferNumber = {
    condition = hide_in_width,
    provider = 'BufferNumber',
    icon = '﬘ ',
    highlight = { colors.green, colors.bg }
  }
}

gls.right[2]= {
  GetLspClient = {
    condition = hide_in_width,
    provider = 'GetLspClient',
    icon = ' ',
    highlight = { colors.yellow, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg }
  }
}

gls.right[3]= {
  FileFormat = {
    condition = hide_in_width,
    provider = function()
      return bo.filetype
    end,
    icon = ' ',
    highlight = { colors.blue, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg }
  }
}

gls.right[4] = {
  LineInfo = {
    condition = hide_in_width,
    provider = 'LineColumn',
    icon = ' ',
    highlight = { colors.magenta, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg }
  },
}

gls.right[5] = {
  PerCent = {
    condition = hide_in_width,
    provider = 'LinePercent',
    icon = '',
    highlight = { colors.red, colors.bg },
    separator = ' | ',
    separator_highlight = { colors.fg, colors.bg }
  }
}

gls.right[6] = {
  ScrollBar = {
    condition = hide_in_width,
    provider = function()
      return ScrollBar()..' '
    end,
    highlight = { colors.red, colors.bg }
  }
}

-- Short status line
gls.short_line_left[1] = {
  BufferType = {
    condition = is_file_type_valid,
    provider = 'FileTypeName',
    highlight = { colors.fg, colors.bg }
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    condition = is_file_type_valid,
    provider= 'BufferIcon',
    highlight = { colors.fg, colors.bg }
  }
}

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
