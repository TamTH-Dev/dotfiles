local M = {}

function M.alpha()
  return function()
    local is_alpha_loaded, alpha = pcall(require, 'alpha')
    if not is_alpha_loaded then return end

    local api = vim.api
    local cmd = vim.cmd

    local header = {
      type = 'text',
      val = {
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
      },
      opts = {
        position = 'center',
        hl = 'Special'
      }
    }

    local handler = io.popen('fd -d 1 . $HOME"/.local/share/nvim/site/pack/packer/start" | wc -l | tr -d "\n" ')
    local plugins_total = handler:read('*a')
    handler:close()
    local plugins_total_stats = {
      type = 'text',
      val = 'Madvim has loaded '..plugins_total..' plugins ',
      opts = {
        position = 'center',
        hl = 'LspSagaCodeActionContent',
      }
    }

    local function set_button(sc, text, keybind)
      local sc_ = sc:gsub('%s', ''):gsub('SPC', '<leader>')
      local opts = {
        position = 'center',
        text = text,
        shortcut = sc,
        cursor = 5,
        width = 24,
        align_shortcut = 'right',
        hl_shortcut = 'Special',
        hl = 'LspSagaSignatureHelpBorder',
      }
      if keybind then
        opts.keymap = { 'n', sc_, keybind, { noremap = true, silent = true } }
      end
      return {
        type = 'button',
        val = text,
        on_press = function()
          local key = api.nvim_replace_termcodes(sc_, true, false, true)
          api.nvim_feedkeys(key, 'normal', false)
        end,
        opts = opts,
      }
    end

    local buttons = {
      type = 'group',
      val = {
        set_button('r', '  Recent Projects', ':Telescope projects<CR>'),
        set_button('p', '  Find File', ':Telescope find_files hidden=true<CR>'),
        set_button('f', '  Find Word', ':Telescope live_grep<CR>'),
        set_button('s', '  Settings', ':e $HOME/.config/nvim/lua/default_config.lua<CR>'),
        set_button('q', '  Quit', ':qa<CR>'),
      },
      opts = {
        position = 'center',
        spacing = 1,
      }
    }

    local footer = {
      type = 'text',
      val = 'A clever person solves a problem. A wise person avoids it.',
      opts = {
        position = 'center',
        hl = 'LspDiagnosticsDefaultWarning',
      }
    }

    local section = {
      header = header,
      plugins_total_stats = plugins_total_stats,
      buttons = buttons,
      footer = footer,
    }

    local opts = {
      layout = {
        { type = 'padding', val = 2 },
        section.header,
        { type = 'padding', val = 1 },
        section.plugins_total_stats,
        { type = 'padding', val = 2 },
        section.buttons,
        { type = 'padding', val = 1 },
        section.footer,
      },
      opts = {
        margin = 5
      },
    }

    -- Apply config to alpha
    alpha.setup(opts)

    -- -- Disable folding on alpha buffer
    cmd('autocmd FileType alpha setlocal nofoldenable')
  end
end

function M.autopairs()
  return function()
    local is_autopairs_loaded, autopairs = pcall(require, 'nvim-autopairs')
    if not (is_autopairs_loaded) then return end

    autopairs.setup({
      map_bs = false,
      disable_filetype = { 'TelescopePrompt' },
    })

    -- For cmp
    require("nvim-autopairs.completion.cmp").setup({
      map_cr = true, --  map <CR> on insert mode
      map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
      auto_select = true, -- automatically select the first item
      insert = false, -- use insert confirm behavior instead of replace
    })

    -- For coq
--     local map = vim.api.nvim_set_keymap
--     local opts = { expr = true, noremap = true }

--     _G.MUtils = {}

--     MUtils.CR = function()
--       if vim.fn.pumvisible() ~= 0 then
--         if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
--           return autopairs.esc('<c-y>')
--         else
--           return autopairs.esc('<c-e>') .. autopairs.autopairs_cr()
--         end
--       else
--         return autopairs.autopairs_cr()
--       end
--     end
--     map('i', '<CR>', 'v:lua.MUtils.CR()', opts)

--     MUtils.BS = function()
--       if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
--         return autopairs.esc('<c-e>') .. autopairs.autopairs_bs()
--       else
--         return autopairs.autopairs_bs()
--       end
--     end
--     map('i', '<bs>', 'v:lua.MUtils.BS()', opts)
  end
end

function M.bufferline()
  return function()
    local is_bufferline_loaded, bufferline =  pcall(require, 'bufferline')
    if not is_bufferline_loaded then return end

    local fn = vim.fn

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
            return fn.fnamemodify(buf.name)
          end
        end,
        max_name_length = 14,
        max_prefix_length = 10,
        tab_size = 16,
        diagnostics = false,
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
  end
end

function M.chadtree()
  return function()
    local api = vim.api
    local map = api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    local chadtree_settings = {
      theme = {
        text_colour_set = 'nord'
      },
      view = {
        width = 35,
      },
    }
    api.nvim_set_var("chadtree_settings", chadtree_settings)

    -- Toggle CHADTree
    map('n', '<C-n>', ':CHADopen<CR>', opts)
  end
end

function M.cmp()
  return function()
    local is_cmp_loaded, cmp = pcall(require, 'cmp')
    local is_cmp_compare_loaded, compare = pcall(require, 'cmp.config.compare')
    local is_cmp_types_loaded, types = pcall(require, 'cmp.types')
    local is_luasnip_loaded, luasnip = pcall(require, 'luasnip')
    if not (is_cmp_loaded or is_cmp_compare_loaded or is_cmp_types_loaded or is_luasnip_loaded) then return end

    local api = vim.api
    local opt = vim.o

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

    local has_words_before = function()
      local line, col = unpack(api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
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
          -- For `luasnip`
          luasnip.lsp_expand(args.body)

          -- For `vsnip` user
          -- vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      preselect = types.cmp.PreselectMode.Item,
      documentation = {
        border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
        winhighlight = 'Normal:MyNormal,NormalNC:MyNormalNC',
        maxwidth = math.floor((WIDE_HEIGHT * 2) * (opt.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
        maxheight = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / opt.lines)),
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
        ['<Down>'] = cmp.mapping.scroll_docs(-4),
        ['<Up>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, {
          'i',
          's',
        }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
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
            luasnip = '(Snippet)',
            vsnip = '(Snippet)',
            cmp_tabnine = "(Tabnine)",
            path = '(Path)',
            calc = '(Calc)',
            buffer = '(Buffer)',
          })[entry.source.name]
          vim_item.dup = ({
            nvim_lsp = 1,
            buffer = 1,
            path = 1,
          })[entry.source.name] or 0
          return vim_item
        end,
      },
      experimental = {
        ghost_text = false,
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'vsnip' },
        { name = 'path' },
        { name = 'buffer' },
        { name = "cmp_tabnine" },
        { name = 'calc' },
        { name = 'treesitter' },
      }
    }
  end
end

function M.cmp_tabnine()
  return function()
    local is_tabnine_loaded, tabnine = pcall(require, 'cmp_tabnine.config')
    if not is_tabnine_loaded then return end
    tabnine:setup({
      max_lines = 1000,
      max_num_results = 20,
      sort = true,
      run_on_every_keystroke = true,
      snippet_placeholder = '..',
    })
  end
end

function M.colorizer()
  return function()
    local is_colorizer_loaded, colorizer = pcall(require, 'colorizer')
    if not is_colorizer_loaded then return end

    colorizer.setup({ '*' }, {
       RGB = true, -- #RGB hex codes
       RRGGBB = true, -- #RRGGBB hex codes
       names = false, -- 'Name' codes like White
       RRGGBBAA = false, -- #RRGGBBAA hex codes
       rgb_fn = false, -- CSS rgb() and rgba() functions
       hsl_fn = false, -- CSS hsl() and hsla() functions
       css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
       css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn

       -- Available modes: foreground, background
       mode = 'background', -- Set the display mode.
    })
  end
end

function M.comment()
  return function()
    local is_comment_loaded, nvim_comment = pcall(require, 'nvim_comment')
    if not is_comment_loaded then return end

    nvim_comment.setup({
      -- Linters prefer comment and line to have a space in between markers
      marker_padding = true,
      -- should comment out empty or whitespace only lines
      comment_empty = false,
      -- Should key mappings be created
      create_mappings = true,
      -- Normal mode mapping left hand side
      line_mapping = '<leader>cl',
      -- Visual/Operator mapping left hand side
      operator_mapping = '<leader>c',
      -- Hook function to call before commenting takes place
      hook = nil
    })
  end
end

function M.fzf()
  return function()
    local api = vim.api
    local map = api.nvim_set_keymap
    local global = vim.g
    local opts = { noremap = true, silent = true }

    -- Fzf layout
    global.fzf_layout = { down = '~40%' }

    -- Disable preview window
    global.fzf_preview_window = { right = 'hidden' }

    global.fzf_nvim_statusline = 0

    -- Open search popup
    map('n', '<C-p>', ':Files<CR>', opts)
    map('n', '<C-f>', ':Rg<CR>', opts)
    map('n', '<C-b>', ':Buffers<CR>', opts)

    global.fzf_colors = {
      fg      = { 'fg', 'BufferLineBufferSelected' },
      bg      = { 'bg', 'BufferLineDiagnosticVisible' },
      hl      = { 'fg', 'BufferLineWarningSelected' },
      ['fg+'] = { 'fg', 'NvimTreeRootFolder' },
      ['bg+'] = { 'bg', 'BufferLineDiagnosticVisible' },
      ['hl+'] = { 'fg', 'BufferLineWarningSelected' },
      info    = { 'fg', 'BufferLineInfoSelected' },
      border  = { 'fg', 'NvimTreeRootFolder' },
      prompt  = { 'fg', 'BufferLinePickVisible' },
      pointer = { 'fg', 'NvimTreeRootFolder' },
      marker  = { 'fg', 'NvimTreeRootFolder' },
      spinner = { 'fg', 'NvimTreeRootFolder' },
      header  = { 'fg', 'BufferLineInfoSelected' }
    }

    -- Actions for fzf
    global.fzf_action = {
       ['ctrl-t'] = 'tab split',
       ['ctrl-x'] = 'split',
       ['ctrl-v'] = 'vsplit'
    }

    -- Files searching
    api.nvim_exec([[command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)]], false)

    -- Buffers searching
    api.nvim_exec([[command! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)]], false)

    -- Advanced ripgrep integration
    api.nvim_exec([[
      function! RipgrepFzf(query, fullscreen)
        let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s -g "!{node_modules,.git,build,dist,.cache,cache,.idea}" || true'
        let initial_command = printf(command_fmt, shellescape(a:query))
        let reload_command = printf(command_fmt, '{q}')
        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
        call fzf#vim#grep(initial_command, 1, a:fullscreen)
      endfunction
      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)
    ]], false)
  end
end

function M.galaxyline()
  return function()
    local is_colors_loaded, highlights = pcall(require, 'colors.highlights')
    local is_galaxyline_loaded, gl = pcall(require, 'galaxyline')
    local is_provider_vcs_loaded, vcs = pcall(require, 'galaxyline.provider_vcs')
    local is_provider_extensions_loaded, extensions = pcall(require, 'galaxyline.provider_extensions')
    local is_conditions_loaded, condition = pcall(require, 'galaxyline.condition')
    local is_provider_fileinfo_loaded, fileinfo = pcall(require, 'galaxyline.provider_fileinfo')
    if not (is_colors_loaded or is_galaxyline_loaded or is_provider_vcs_loaded or is_provider_extensions_loaded or is_conditions_loaded or is_provider_fileinfo_loaded) then return end

    local fn = vim.fn
    local bo = vim.bo
    local cmd = vim.cmd
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

    -- Custom gitsigns checking
    local get_diff = function(opts)
      local git_dict = vim.b.gitsigns_status_dict
      if not git_dict or not git_dict.head or #git_dict.head <= 0 then return end
      local choices = {
        [0] = git_dict.added or 0,
        [1] = git_dict.changed or 0,
        [2] = git_dict.removed or 0,
      }
      local value = choices[opts.status]
      if not value then return '' end
      return string.format('%s ', value)
    end

    -- Color
    local colors = highlights.colors

    local is_buffer_number_valid = function()
      local buffers = {}
      for _,val in ipairs(fn.range(1,fn.bufnr('$'))) do
        if fn.bufexists(val) == 1 and fn.buflisted(val) == 1 then
          table.insert(buffers,val)
        end
      end
      for _, nr in ipairs(buffers) do
        if nr == fn.bufnr('') then
          return true
        end
      end
    end

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
    gl.short_line_list = { 'NvimTree', 'packer', 'fzf' }

    -- Left section
    gls.left[1] = {
      EmptyBar = {
        provider = function()
          cmd('hi GalaxyEmptyBar guifg='..get_mode_color())
          return '▊'
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
          local icons = {
            n = ' ',
            i = ' ',
            c = 'גּ ',
            V = '﬏ ',
            [''] = '﬏ ',
            v = '﬏ ',
            R = ' ',
          }
          cmd('hi GalaxyViMode guifg='..get_mode_color())
          local alias_mode = alias[fn.mode()]
          local icon = icons[fn.mode()]
          if not alias_mode then
            alias_mode = fn.mode()
          end
          if not icon then
            icon = ''
          end
          return icon..alias_mode
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
        provider = function() return get_diff({ status = 0 }) end,
        icon = '  ',
        highlight = { colors.green, colors.bg }
      }
    }

    gls.left[8] = {
      DiffModified = {
        condition = is_git_workspace_showed,
        provider = function() return get_diff({ status = 1 }) end,
        icon = '  ',
        highlight = { colors.orange, colors.bg }
      }
    }

    gls.left[9] = {
      DiffRemove = {
        condition = is_git_workspace_showed,
        provider = function() return get_diff({ status = 2 }) end,
        icon = '  ',
        highlight = { colors.red,colors.bg }
      }
    }

    gls.left[10] = {
      Space = {
        condition = is_git_workspace_showed,
        provider = function() return ' ' end,
        highlight = { colors.bg, colors.bg },
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

    gls.right[2] = {
      Separator = {
        condition = function() return hide_in_width() and is_buffer_number_valid() end,
        provider = function()
          return '| '
        end,
        highlight = { colors.white, colors.bg },
        separator = ' ',
        separator_highlight = { colors.bg, colors.bg },
      },
    }

    gls.right[3]= {
      GetLspClient = {
        condition = hide_in_width,
        provider = 'GetLspClient',
        icon = ' ',
        highlight = { colors.orange, colors.bg },
      }
    }

    gls.right[4] = {
      Separator = {
        condition = hide_in_width,
        provider = function()
          return '| '
        end,
        highlight = { colors.white, colors.bg },
        separator = ' ',
        separator_highlight = { colors.bg, colors.bg },
      },
    }

    gls.right[5]= {
      FileFormat = {
        provider = function()
          if not bo.filetype or bo.filetype == '' then return 'undefined' end
          return bo.filetype
        end,
        icon = ' ',
        highlight = { colors.blue, colors.bg },
        -- separator = ' | ',
        -- separator_highlight = { colors.fg, colors.bg }
      }
    }

    gls.right[6] = {
      LineInfo = {
        provider = 'LineColumn',
        icon = ' ',
        highlight = { colors.magenta, colors.bg },
        separator = ' | ',
        separator_highlight = { colors.fg, colors.bg }
      },
    }

    gls.right[7] = {
      PerCent = {
        condition = hide_in_width,
        provider = 'LinePercent',
        icon = '',
        highlight = { colors.red, colors.bg },
        separator = ' | ',
        separator_highlight = { colors.fg, colors.bg }
      }
    }

    gls.right[8] = {
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
  end
end

function M.gitsigns()
  return function()
    local is_gitsigns_loaded, gitsigns = pcall(require, 'gitsigns')
    if not is_gitsigns_loaded then return end

    gitsigns.setup {
      numhl = false,
      signcolumn = false,
      signs = {
        add = { hl = 'DiffAdd', text = '│', numhl = 'GitSignsAddNr' },
        change = { hl = 'DiffChange', text = '│', numhl = 'GitSignsChangeNr' },
        changedelete = { hl = 'DiffChange', text = '~', numhl = 'GitSignsChangeNr' },
        delete = { hl = 'DiffDelete', text = '_', numhl = 'GitSignsDeleteNr' },
        topdelete = { hl = 'DiffDelete', text = '‾', numhl = 'GitSignsDeleteNr' },
      },
      status_formatter = nil, -- Use default
      watch_index = { interval = 1000, follow_files = true },
      sign_priority = 6,
      debug_mode = false,
      current_line_blame = false,
      update_debounce = 100,
      word_diff = false,
    }
  end
end

function M.icons()
  return function()
    local is_colors_loaded, highlights = pcall(require, 'colors.highlights')
    local is_devicons_loaded, icons = pcall(require, 'nvim-web-devicons')
    if not (is_devicons_loaded or is_colors_loaded) then return end

    -- Colors
    local colors = highlights.colors

    icons.setup {
      override = {
        c = {
           icon = '',
           color = colors.blue,
           name = 'c',
        },
        cc = {
           icon = '',
           color = colors.blue,
           name = 'cc',
        },
        cpp = {
           icon = '',
           color = colors.blue,
           name = 'cpp',
        },
        css = {
           icon = '',
           color = colors.blue,
           name = 'css',
        },
        deb = {
           icon = '',
           color = colors.red,
           name = 'deb',
        },
        Dockerfile = {
           icon = '',
           color = colors.blue,
           name = 'Dockerfile',
        },
        html = {
           icon = '',
           color = colors.orange,
           name = 'html',
        },
        java = {
          icon = '',
          color = colors.red,
          name = 'java',
        },
        jpeg = {
           icon = '',
           color = colors.magenta,
           name = 'jpeg',
        },
        jpg = {
           icon = '',
           color = colors.magenta,
           name = 'jpg',
        },
        js = {
           icon = '',
           color = colors.orange,
           name = 'js',
        },
        kt = {
           icon = '󱈙',
           color = colors.orange,
           name = 'kt',
        },
        lock = {
           icon = '',
           color = colors.red,
           name = 'lock',
        },
        lua = {
           icon = '',
           color = colors.blue,
           name = 'lua',
        },
        mp3 = {
           icon = '',
           color = colors.blue,
           name = 'mp3',
        },
        mp4 = {
           icon = '',
           color = colors.blue,
           name = 'mp4',
        },
        out = {
           icon = '',
           color = colors.blue,
           name = 'out',
        },
        png = {
           icon = '',
           color = colors.magenta,
           name = 'png',
        },
        py = {
           icon = '',
           color = colors.yellow,
           name = 'py',
        },
        toml = {
           icon = '',
           color = colors.blue,
           name = 'toml',
        },
        ts = {
           icon = '',
           color = colors.blue,
           name = 'ts',
        },
        rb = {
           icon = '',
           color = colors.red,
           name = 'rb',
        },
        rpm = {
           icon = '',
           color = colors.orange,
           name = 'rpm',
        },
        vue = {
           icon = '﵂',
           color = colors.green,
           name = 'vue',
        },
        xz = {
           icon = '',
           color = colors.orange,
           name = 'xz',
        },
        zip = {
           icon = '',
           color = colors.orange,
           name = 'zip',
        }
      }
    }
  end
end

function M.lsp()
  return function()
    local is_lsp_installer_loaded, lsp_installer = pcall(require, 'nvim-lsp-installer')
    local is_languages_loaded, languages = pcall(require, 'plugins/languages')
    local is_cmp_nvim_lsp_loaded, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
    if not (is_lsp_installer_loaded or is_languages_loaded or is_cmp_nvim_lsp_loaded) then return end

    local api = vim.api
    local cmd = vim.cmd
    local lsp = vim.lsp

    local customize = function()
      local handlers = lsp.handlers
      local fn = vim.fn

      -- Popups
      local pop_opts = { border = 'rounded', max_width = 80 }
      handlers['textDocument/hover'] = lsp.with(handlers.hover, pop_opts)
      handlers['textDocument/signatureHelp'] = lsp.with(handlers.signature_help, pop_opts)

      -- Diagnostics
      handlers['textDocument/publishDiagnostics'] = lsp.with(
        lsp.diagnostic.on_publish_diagnostics,
        {
          signs = true,
          virtual_text = {
            prefix = '🐳',
            spacing = 0,
          },
          underline = true,
          severity_sort = false,
        }
      )

      -- Symbols in the sign column (gutter)
      local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
      for type, icon in pairs(signs) do
        local hl = 'LspDiagnosticsSign' .. type
        fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      -- Apply styling from lsputils
      if vim.fn.has('nvim-0.5.1') == 1 then
        vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
        -- vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
        vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
        vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
        vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
        vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
        vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
        vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
      else
        local bufnr = vim.api.nvim_buf_get_number(0)
        vim.lsp.handlers['textDocument/codeAction'] = function(_, _, actions)
          require('lsputil.codeAction').code_action_handler(nil, actions, nil, nil, nil)
        end
        vim.lsp.handlers['textDocument/references'] = function(_, _, result)
          require('lsputil.locations').references_handler(nil, result, { bufnr = bufnr }, nil)
        end
        vim.lsp.handlers['textDocument/definition'] = function(_, method, result)
          require('lsputil.locations').definition_handler(nil, result, { bufnr = bufnr, method = method }, nil)
        end
        vim.lsp.handlers['textDocument/declaration'] = function(_, method, result)
          require('lsputil.locations').declaration_handler(nil, result, { bufnr = bufnr, method = method }, nil)
        end
        vim.lsp.handlers['textDocument/typeDefinition'] = function(_, method, result)
          require('lsputil.locations').typeDefinition_handler(nil, result, { bufnr = bufnr, method = method }, nil)
        end
        vim.lsp.handlers['textDocument/implementation'] = function(_, method, result)
          require('lsputil.locations').implementation_handler(nil, result, { bufnr = bufnr, method = method }, nil)
        end
        vim.lsp.handlers['textDocument/documentSymbol'] = function(_, _, result, _, bufn)
          require('lsputil.symbols').document_handler(nil, result, { bufnr = bufn }, nil)
        end
        vim.lsp.handlers['textDocument/symbol'] = function(_, _, result, _, bufn)
          require('lsputil.symbols').workspace_handler(nil, result, { bufnr = bufn }, nil)
        end
      end
    end

    -- Invoke customization
    customize()

    local on_attach = function(client, bufnr)
      local buf_set_keymap = function(...) api.nvim_buf_set_keymap(bufnr, ...) end
      local buf_set_option = function(...) api.nvim_buf_set_option(bufnr, ...) end
      local opts = { noremap = true, silent = true } -- Mappings

      -- Enable completion triggered
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
      buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      buf_set_keymap('n', '<leader>gk', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      buf_set_keymap('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
      buf_set_keymap('n', '<leader>gn', '<cmd>lua vim.lsp.diagnostic.goto_next({ popup_opts = { border = \'rounded\' } })<CR>', opts)
      buf_set_keymap('n', '<leader>gp', '<cmd>lua vim.lsp.diagnostic.goto_prev({ popup_opts = { border = \'rounded\' } })<CR>', opts)
      buf_set_keymap('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      buf_set_keymap('n', '<leader>gf', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
      buf_set_keymap('n', '<leader>gl', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = \'rounded\' })<CR>', opts)

      -- Set autocommands conditional on server_capabilities
      if client.resolved_capabilities.document_highlight then
        api.nvim_exec([[
          augroup lsp_document_highlight
          autocmd! * <buffer>
          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          augroup END
        ]], false)
      end
    end

    local set_capabilities = function()
      local capabilities = lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      capabilities.textDocument.completion.completionItem.resolveSupport = {
        properties = {
          'documentation',
          'detail',
          'additionalTextEdits',
        },
      }
      capabilities = cmp_nvim_lsp.update_capabilities(capabilities)
      return capabilities
    end

    lsp_installer.settings {
      ui = {
        icons = {
          -- The list icon to use for installed servers.
          server_installed = '✓',
          -- The list icon to use for servers that are pending installation.
          server_pending = '➜',
          -- The list icon to use for servers that are not installed.
          server_uninstalled = '✗'
        },
        keymaps = {
          -- Keymap to expand a server in the UI
          toggle_server_expand = '<CR>',
          -- Keymap to install a server
          install_server = 'i',
          -- Keymap to reinstall/update a server
          update_server = 'u',
          -- Keymap to uninstall a server
          uninstall_server = 'X',
        },
      }
    }

    lsp_installer.on_server_ready(function(server)
      local opts = {
        -- Map buffer local keybindings when the language server attaches
        on_attach = on_attach,
        -- Enable snippet support
        capabilities = set_capabilities(),
      }
      local language = languages[server.name]
      if language then
        if language.init_options then
          opts.init_options = language.init_options
        end
        if language.settings then
          opts.settings = language.settings
        end
        if language.root_dir then
          opts.root_dir = language.root_dir
        end
        if language.filetypes then
          opts.filetypes = language.filetypes
        end
      end
      -- Apply options
      server:setup(opts)
      cmd [[ do User LspAttachBuffers ]]
    end)
  end
end

function M.neoscroll()
  return function()
    local is_neoscroll_loaded, neoscroll = pcall(require, 'neoscroll')
    local is_config_loaded, config = pcall(require, 'neoscroll.config')
    if not (is_neoscroll_loaded or is_config_loaded) then return end

    neoscroll.setup({
      -- All these keys will be mapped to their corresponding default scrolling animation
      mappings = { '<C-u>', '<C-d>' },
      hide_cursor = true,          -- Hide cursor while scrolling
      stop_eof = true,             -- Stop at <EOF> when scrolling downwards
      use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
      respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
      cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
      easing_function = nil,        -- Default easing function
      pre_hook = nil,              -- Function to run before the scrolling animation starts
      post_hook = nil,              -- Function to run after the scrolling animation ends
    })

    local mappings = {}
    mappings['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '100' } }
    mappings['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '100' } }
    -- mappings['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '100' } }
    -- mappings['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '100' } }
    config.set_mappings(mappings)
  end
end

function M.nvimtree()
  return function()
    local is_nvimtree_loaded, nvimtree = pcall(require, 'nvim-tree')
    if not is_nvimtree_loaded then return end
    nvimtree.setup {
      -- disables netrw completely
      disable_netrw       = true,
      -- hijack netrw window on startup
      hijack_netrw        = true,
      -- open the tree when running this setup function
      open_on_setup       = false,
      -- will not open on setup if the filetype is in this list
      ignore_ft_on_setup  = {},
      -- closes neovim automatically when the tree is the last **WINDOW** in the view
      nvim_tree_auto_close          = true,
      -- disable diagnostic in nvim tree
      nvim_tree_lsp_diagnostics = false,
      -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
      open_on_tab         = false,
      -- hijack the cursor in the tree to put it at the start of the filename
      hijack_cursor       = false,
      -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
      update_cwd          = false,
      -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
      update_focused_file = {
        -- enables the feature
        enable      = false,
        -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
        -- only relevant when `update_focused_file.enable` is true
        update_cwd  = false,
        -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
        -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
        ignore_list = {}
      },
      -- configuration options for the system open command (`s` in the tree by default)
      system_open = {
        -- the command to run this, leaving nil should work in most cases
        cmd  = nil,
        -- the command arguments as a list
        args = {}
      },

      view = {
        -- width of the window, can be either a number (columns) or a string in `%`
        width = 35,
        -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
        side = 'left',
        -- if true the tree will resize itself after opening a file
        auto_resize = false,
        mappings = {
          -- custom only false will merge the list with the default mappings
          -- if true, it will only use your list to set the mappings
          custom_only = false,
          -- list of mappings to set on the tree manually
          list = {}
        }
      }
    }
  end
end

function M.project()
  return function()
    local is_project_loaded, project = pcall(require, 'project_nvim')
    if not is_project_loaded then return end
    project.setup {
      -- Manual mode doesn't automatically change your root directory, so you have
      -- the option to manually do so using `:ProjectRoot` command.
      manual_mode = false,
      -- Methods of detecting the root directory. **'lsp'** uses the native neovim
      -- lsp, while **'pattern'** uses vim-rooter like glob pattern matching. Here
      -- order matters: if one is not detected, the other is used as fallback. You
      -- can also delete or rearangne the detection methods.
      detection_methods = { 'lsp', 'pattern' },
      -- All the patterns used to detect root dir, when **'pattern'** is in
      -- detection_methods
      patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json' },
      -- Table of lsp clients to ignore by name
      -- eg: { 'efm', ... }
      ignore_lsp = {},
      -- Don't calculate root dir on specific directories
      -- Ex: { '~/.cargo/*', ... }
      exclude_dirs = {},
      -- Show hidden files in telescope
      show_hidden = false,
      -- When set to false, you will get a message when project.nvim changes your
      -- directory.
      silent_chdir = true,
      -- Path where project.nvim will store the project history for use in
      -- telescope
      datapath = vim.fn.stdpath('data'),
    }
    require('telescope').load_extension('projects')
  end
end

function M.saga()
  return function()
    local is_saga_loaded, saga = pcall(require, 'lspsaga')
    if not is_saga_loaded then return end

    saga.init_lsp_saga {
      use_saga_diagnostic_sign = true,
      error_sign = ' ',
      warn_sign = ' ',
      hint_sign = ' ',
      infor_sign = ' ',
      dianostic_header_icon = ' ',
      code_action_icon = ' ',
      code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true
      },
      finder_definition_icon = ' ',
      finder_reference_icon = ' ',
      max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
      finder_action_keys = {
        open = '<cr>',
        vsplit = '<C-v>',
        split = '<C-x>',
        quit = 'q',
        scroll_down = '<C-j>',
        scroll_up = '<C-k>'
      },
      code_action_keys = {
        quit = 'q',
        exec = '<cr>'
      },
      rename_action_keys = {
        quit = 'q',
        exec = '<cr>'
      },
      definition_preview_icon = ' ',
      border_style = 'single', -- 'single' 'double' 'round' 'plus'
      rename_prompt_prefix = '➤'
    }
  end
end

function M.session()
  return function()
    local is_session_loaded, session = pcall(require, 'auto-session')
    if not is_session_loaded then return end

    local opts = {
      log_level = 'info',
      auto_session_enable_last_session = false,
      auto_session_root_dir = vim.fn.stdpath('data') .. '/sessions/',
      auto_session_enabled = true,
      auto_save_enabled = true,
      auto_restore_enabled = false,
      auto_session_suppress_dirs = nil
    }
    session.setup(opts)
  end
end

function M.telescope()
  return function()
    local is_telescope_loaded, telescope = pcall(require, 'telescope')
    local is_telescope_actions_loaded, actions = pcall(require, 'telescope.actions')
    local is_telescope_sorters_loaded, sorters = pcall(require, 'telescope.sorters')
    local is_telescope_previewers_loaded, previewers = pcall(require, 'telescope.previewers')
    if not (is_telescope_loaded or is_telescope_actions_loaded or is_telescope_sorters_loaded or is_telescope_previewers_loaded) then
      return
    end

    telescope.setup {
      defaults = {
        mappings = {
          n = {
            ['q'] = actions.close,
            ['<leader>ga'] = actions.smart_send_to_qflist + actions.open_qflist,
          },
          i = {
            ['<leader>ga'] = actions.smart_send_to_qflist + actions.open_qflist,
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
        file_sorter =  sorters.get_fzy_sorter,
        file_ignore_patterns = {
          'scratch/.*',
          'node_modules/.*',
          'build/.*',
          'dist/.*',
          '.git/.*',
        },
        generic_sorter =  sorters.get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        disable_devicons = false,
        color_devicons = true,
        use_less = true,
        path_display = {},
        set_env = { ['COLORTERM'] = 'truecolor' },
        file_previewer = previewers.vim_buffer_cat.new,
        grep_previewer = previewers.vim_buffer_vimgrep.new,
        qflist_previewer = previewers.vim_buffer_qflist.new,
        buffer_previewer_maker = previewers.buffer_previewer_maker
      },
    }
  end
end

function M.treesitter()
  return function()
    local is_treesitter_loaded, treesitter_configs = pcall(require, 'nvim-treesitter.configs')
    if not is_treesitter_loaded then return end

    treesitter_configs.setup {
      highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = true,
      },
      indent = {
        enable = false,
        disable = {}
      },
      ensure_installed = 'all',
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = 'o',
          toggle_hl_groups = 'i',
          toggle_injected_languages = 't',
          toggle_anonymous_nodes = 'a',
          toggle_language_display = 'I',
          focus_language = 'f',
          unfocus_language = 'F',
          update = 'R',
          goto_node = '<CR>',
          show_help = '?',
        },
      }
    }
  end
end

function M.which_key()
  return function()
    local is_which_key_loaded, which_key = pcall(require, 'which-key')
    if not is_which_key_loaded then return end
    local setup = {
      -- plugins = {
      --   marks = true, -- shows a list of your marks on ' and `
      --   registers = true, -- shows your registers on ' in NORMAL or <C-r> in INSERT mode
      --   -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      --   -- No actual key bindings are created
      --   presets = {
      --     operators = false, -- adds help for operators like d, y, ...
      --     motions = true, -- adds help for motions
      --     text_objects = true, -- help for text objects triggered after entering an operator
      --     windows = true, -- default bindings on <c-w>
      --     nav = true, -- misc bindings to work with windows
      --     z = true, -- bindings for folds, spelling and others prefixed with z
      --     g = true, -- bindings for prefixed with g
      --   },
      --   spelling = { enabled = true, suggestions = 20 }, -- use which-key for spelling hints
      -- },
      icons = {
        breadcrumb = '»', -- symbol used in the command line area that shows your active key combo
        separator = '➜', -- symbol used between a key and it's label
        group = '+', -- symbol prepended to a group
      },
      window = {
        border = 'rounded', -- none, single, double, shadow
        position = 'bottom', -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
      },
      layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
      },
      hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:', '^ ' }, -- hide mapping boilerplate
      show_help = true, -- show help message on the command line when the popup is visible
    }
    which_key.setup(setup)
    local opts = {
      prefix = '<leader>',
      -- mode = 'n', -- NORMAL mode
      -- buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
      -- silent = true, -- use `silent` when creating keymaps
      -- noremap = true, -- use `noremap` when creating keymaps
      -- nowait = true, -- use `nowait` when creating keymaps
    }
    local mappings = {
      ['w'] = { '<cmd>w!<CR>', 'Save' },
      ['q'] = { '<cmd>q!<CR>', 'Quit' },
    }
    which_key.register(mappings, opts)
  end
end

return M
