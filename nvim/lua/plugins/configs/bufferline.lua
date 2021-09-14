local is_bufferline_loaded, bufferline =  pcall(require, 'bufferline')
if not is_bufferline_loaded then return end

bufferline.setup {
  options = {
    numbers = 'none',
    close_command = 'bdelete! %d',       -- can be a string | function, see 'Mouse actions'
    right_mouse_command = 'bdelete! %d', -- can be a string | function, see 'Mouse actions'
    left_mouse_command = 'buffer %d',    -- can be a string | function, see 'Mouse actions'
    middle_mouse_command = nil,          -- can be a string | function, see 'Mouse actions'
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    name_formatter = function(buf)  -- buf contains a 'name', 'path' and 'bufnr'
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name)
      end
    end,
    max_name_length = 14,
    max_prefix_length = 10,
    tab_size = 16,
    diagnostics = false,
    offsets = { { filetype = 'NvimTree', text = 'File Explorer', text_align = 'center' } },
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    separator_style = 'thin', -- 'slant' | 'thick' | 'thin' | { 'any', 'any' },
    enforce_regular_tabs = false,
    always_show_bufferline = false,
    sort_by = 'id',
  }
}
