local M = {}

function M.barbar()
  return function()
    local map = vim.api.nvim_set_keymap
    local global = vim.g
    local opts = { noremap = true, silent = true }
    -- Move to previous/next
    map('n', '<leader><S-Tab>', ':BufferPrevious<CR>', opts)
    map('n', '<leader><Tab>', ':BufferNext<CR>', opts)
    -- Re-order to previous/next
    map('n', '<leader><', ':BufferMovePrevious<CR>', opts)
    map('n', '<leader>>', ' :BufferMoveNext<CR>', opts)
    -- Goto buffer in position...
    map('n', '<leader>1', ':BufferGoto 1<CR>', opts)
    map('n', '<leader>2', ':BufferGoto 2<CR>', opts)
    map('n', '<leader>3', ':BufferGoto 3<CR>', opts)
    map('n', '<leader>4', ':BufferGoto 4<CR>', opts)
    map('n', '<leader>5', ':BufferGoto 5<CR>', opts)
    map('n', '<leader>6', ':BufferGoto 6<CR>', opts)
    map('n', '<leader>7', ':BufferGoto 7<CR>', opts)
    map('n', '<leader>8', ':BufferGoto 8<CR>', opts)
    map('n', '<leader>9', ':BufferGoto 9<CR>', opts)
    map('n', '<leader>10', ':BufferGoto 10<CR>', opts)
    map('n', '<leader>0', ':BufferLast<CR>', opts)
    -- Close all buffer but accept the current one
    map('n', '<leader>cb', ':BufferCloseAllButCurrent<CR>', opts)
    -- Sort buffer
    map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', opts)
    map('n', '<leader>bd', ':BufferOrderByDirectory<CR>', opts)
    map('n', '<leader>bl', ':BufferOrderByLanguage<CR>', opts)

    global.bufferline = {
      closable = false,
      exclude_name = {
        'fzf',
        'alpha'
      },
    }
  end
end

function M.bufdel()
  return function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<leader>q', ':BufDel<CR>', opts)
  end
end

function M.bufferline()
  return function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<leader><Tab>', ':BufferLineCycleNext<CR>', opts)
    map('n', '<leader><S-Tab>', ':BufferLineCyclePrev<CR>', opts)
    -- Re-order to previous/next
    map('n', '<leader>>', ' :BufferLineMoveNext<CR>', opts)
    map('n', '<leader><', ':BufferLineMovePrev<CR>', opts)
    -- Goto buffer in position...
    map('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opts)
    map('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opts)
    map('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opts)
    map('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opts)
    map('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opts)
    map('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opts)
    map('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', opts)
    map('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', opts)
    map('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', opts)
    map('n', '<leader>10', ':BufferLineGoToBuffer 10<CR>', opts)
  end
end

function M.dashboard()
  return function()
    local global = vim.g
    local cmd = vim.cmd
    local api = vim.api

    global.dashboard_default_executive = 'telescope'

    global.dashboard_custom_header = {
        '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ',
        '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
        '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ',
        '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
        '          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
        '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
        '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
        ' ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
        ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ',
        '    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       ',
        '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
    }

    global.dashboard_custom_section = {
      a = {
        description = { '  Find File' },
        command = 'Telescope find_files',
      },
      b = {
        description = { '  Find Word' },
        command = 'Telescope live_grep',
      },
      c = {
        description = { '  Recent Files' },
        command = 'Telescope oldfiles',
      },
      d = {
        description = { '  Settings' },
        command = 'e $HOME/.config/nvim/lua/default_config.lua',
      },
      e = {
        description = { '  Quit' },
        command = 'qa',
      },
    }

    cmd([[let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 1, 1))]])

    api.nvim_exec(
      [[
      let g:dashboard_custom_footer = ['Madvim loaded '..packages..' plugins  ']
  ]],
      false
    )

    api.nvim_exec([[
       autocmd FileType dashboard nnoremap <silent> <buffer> q :q<CR>
    ]], false)
  end
end

function M.emmet()
  return function()
    local global = vim.g
    -- Remap the default emmet's leader key
    global.user_emmet_leader_key = '<C-y>'
  end
end

function M.indent_blankline()
  return function()
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
  end
end

function M.neoformat()
  return function ()
    local global = vim.g
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    -- Enable formatters for python
    global.neoformat_enabled_python = { 'yapf', 'autopep8', 'black' }
    map('n', '<leader>f', '<cmd>Neoformat<CR>', opts)
  end
end

function M.nvimtree()
  return function()
    local map = vim.api.nvim_set_keymap
    local global = vim.g
    local opts = { noremap = true, silent = true }

    map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
    map('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)
    map('n', '<leader>nf', ':NvimTreeFindFile<CR>', opts)
    -- Don't auto open tree on specific filetypes
    global.nvim_tree_auto_ignore_ft = { 'startify', 'dashboard', 'alpha' }
    -- List of filenames that gets highlighted with NvimTreeSpecialFile
    global.vim_tree_special_files = {
      ['README.md'] = 1,
      Makefile = 1,
      MAKEFILE = 1
    }
    -- Show indent markers when folders are open
    global.nvim_tree_indent_markers = 1
    -- Enable folder and file icon highlight for opened files/directories
    global.nvim_tree_highlight_opened_files = 0
    -- Root format
    global.nvim_tree_root_folder_modifier = ':~'
    -- Custom icons
    global.nvim_tree_icons = {
      default= '',
      symlink= '',
      git= {
        unstaged= '±',
        staged= '',
        unmerged= '',
        renamed= '',
        untracked= '',
        deleted= '',
        ignored= ''
      },
      folder= {
        arrow_open= '',
        arrow_closed= '',
        default= '',
        open= '',
        empty= '',
        empty_open= '',
        symlink= '',
        symlink_open= '',
      },
      lsp= {
        error= '',
        warning= '',
        info= '',
        hint= '',
      }
    }
  end
end

function M.saga()
  return function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- show hover doc
    map('n', '<leader>gk', '<cmd>Lspsaga hover_doc<CR>', opts)
    -- scroll action
    map('n', '<C-d>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', opts)
    map('n', '<C-u>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', opts)
    -- code action
    map('n', '<leader>ga', '<cmd>Lspsaga code_action<CR>', opts)
    map('v', '<leader>ga', '<cmd><c-u>Lspsaga range_code_action<CR>', opts)
    -- show signature help
    map('n', '<leader>gs', '<cmd>Lspsaga signature_help<CR>', opts)
    -- show diagnostic
    map('n', '<leader>gl', '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
    -- rename
    map('n', '<leader>gr', '<cmd>Lspsaga rename<CR>', opts)
    -- jump diagnostic
    map('n', '<leader>gn', '<cmd>Lspsaga diagnostic_jump_next<CR>', opts)
    map('n', '<leader>gp', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
    -- lsp provider to find the cursor word definition and reference
    map('n', '<leader>gf', '<cmd>Lspsaga lsp_finder<CR>', opts)
  end
end

function M.telescope()
  return function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map('n', '<C-p>', ':Telescope find_files hidden=true<CR>', opts)
    map('n', '<C-f>', ':Telescope live_grep<CR>', opts)
    map('n', '<C-b>', ':Telescope buffers<CR>', opts)
    map('n', '<C-e>', ':Telescope lsp_document_diagnostics<CR>', opts)
    map('n', '<C-w>', ':Telescope lsp_workspace_diagnostics<CR>', opts)
  end
end

return M
