local global = vim.g

global.indent_blankline_buftype_exclude = {
'help', 'startify', 'dashboard', 'packer', 'alpha', 'NvimTree'
}
global.indent_blankline_filetype_exclude = {
'help', 'startify', 'dashboard', 'packer', 'alpha', 'NvimTree'
}
global.indent_blankline_char_list = {'', '┊', '┆', '¦', '|', '¦', '┆', '┊', ''}
global.indent_blankline_show_trailing_blankline_indent = false
global.indent_blankline_show_first_indent_level = false
global.indent_blankline_bufname_exclude = { 'README.md' }
global.indent_blankline_context_patterns = {
  'class', 'return', 'function', 'method', '^if', 'if', '^while', 'jsx_element', '^for', 'for',
  '^object', '^table', 'block', 'arguments', 'if_statement', 'else_clause', 'jsx_element',
  'jsx_self_closing_element', 'try_statement', 'catch_clause', 'import_statement',
  'operation_type'
}
global.indent_blankline_use_treesitter = true
global.indent_blankline_show_current_context = true
global.indent_blankline_enabled = true
