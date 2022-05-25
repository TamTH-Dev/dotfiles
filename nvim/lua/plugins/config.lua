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
        hl = 'Boolean'
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
        hl_shortcut = 'Debug',
        hl = 'Function',
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
        set_button('p', '  Find File', '<cmd>Telescope find_files hidden=true<CR>'),
        set_button('f', '  Find Word', '<cmd>Telescope live_grep<CR>'),
        set_button('n', '  New File',  '<cmd>ene!<CR>'),
        set_button('s', '  Settings',  '<cmd>e $HOME/.config/nvim/lua/default_config.lua<CR>'),
        set_button('q', '  Quit',      '<cmd>qa<CR>'),
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
        hl = 'String',
      }
    }

    local section = {
      header = header,
      buttons = buttons,
      footer = footer,
    }

    local opts = {
      layout = {
        { type = 'padding', val = 3 },
        section.header,
        { type = 'padding', val = 2 },
        section.buttons,
        { type = 'padding', val = 2 },
        section.footer,
      },
      opts = {
        margin = 5
      },
    }

    --@usage apply config to alpha
    alpha.setup(opts)

    --@usage disable folding on alpha buffer
    cmd('autocmd FileType alpha setlocal nofoldenable')
  end
end

function M.autopairs()
  return function()
    local autopairs_loaded, autopairs = pcall(require, 'nvim-autopairs')
    local cmp_loaded, cmp = pcall(require, 'cmp')

    if not (autopairs_loaded or cmp_loaded) then return end

    autopairs.setup({
      disable_filetype = { 'TelescopePrompt' },
      --@usage check bracket in same line
        enable_check_bracket_line = false,
      --@usage check treesitter
      check_ts = true,
      enable_moveright = true,
      --@usage disable when recording or executing a macro
      disable_in_macro = false,
      --@usage add bracket pairs after quote
      enable_afterquote = true,
      --@usage map the <BS> key
      map_bs = true,
      --@usage map <c-w> to delete a pair if possible
      map_c_w = false,
      --@usage disable when insert after visual block mode
      disable_in_visualblock = false,
      --@usage change default fast_wrap
      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0, -- Offset from pattern match
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "Search",
        highlight_grey = "Comment",
      },
    })

    --@usage intergate with cmp
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
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
        close_command = 'bdelete! %d',
        right_mouse_command = 'bdelete! %d',
        left_mouse_command = 'buffer %d',
        middle_mouse_command = nil,
        indicator_icon = '▎',
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        --@usage can be used to change the buffer's label in the bufferline.
        name_formatter = function(buf)
          if buf.name:match('%.md') then
            return fn.fnamemodify(buf.name)
          end
        end,
        max_name_length = 14,
        max_prefix_length = 10,
        tab_size = 16,
        diagnostics = false,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        --@usage whether or not custom sorted buffers should persist
        persist_buffer_sort = true,
        --@usage 'slant' | 'thick' | 'thin' | { 'any', 'any' }
        separator_style = 'thin',
        enforce_regular_tabs = false,
        always_show_bufferline = false,
        sort_by = 'id',
      }
    }
  end
end

function M.cmp()
  return function()
    local is_cmp_loaded, cmp = pcall(require, 'cmp')
    local is_luasnip_loaded, luasnip = pcall(require, 'luasnip')

    if not (is_cmp_loaded or is_luasnip_loaded) then return end

    local api = vim.api

    -- Icon for custom item kinds
    local format_icons = {
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

      return col ~= 0 and api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
    end

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        documentation = {
          border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'},
          winhighlight = 'Normal:Normal,FloatBorder:PmenuBorder,CursorLine:Visual,Search:None',
          scrollbar = '║',
        },
        completion = {
          border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'},
          winhighlight = 'Normal:Normal,FloatBorder:PmenuBorder,CursorLine:Visual,Search:None',
          scrollbar = nil,
        },
      },
      mapping = {
        ['<Down>'] = cmp.mapping.scroll_docs(-4),
        ['<Up>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
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
        fields = { "kind", "abbr", "menu" },
        max_width = 0,
        kind_icons = {
          Class = " ",
          Color = " ",
          Constant = "ﲀ ",
          Constructor = " ",
          Enum = "練",
          EnumMember = " ",
          Event = " ",
          Field = " ",
          File = "",
          Folder = " ",
          Function = " ",
          Interface = "ﰮ ",
          Keyword = " ",
          Method = " ",
          Module = " ",
          Operator = "",
          Property = " ",
          Reference = " ",
          Snippet = " ",
          Struct = " ",
          Text = " ",
          TypeParameter = " ",
          Unit = "塞",
          Value = " ",
          Variable = " ",
        },
        source_names = {
          nvim_lsp = "(LSP)",
          path = "(Path)",
          luasnip = "(Snippet)",
          buffer = "(Buffer)",
        },
        duplicates = {
          nvim_lsp = 0,
          luasnip = 1,
          buffer = 1,
          path = 1,
        },
        duplicates_default = 0,
        format = function(entry, vim_item)
          vim_item.kind = format_icons[vim_item.kind]
          vim_item.menu = ({
            nvim_lsp = '(LSP)',
            luasnip = '(Snippet)',
            path = '(Path)',
            buffer = '(Buffer)',
          })[entry.source.name]
          vim_item.dup = ({
            nvim_lsp = 0,
            luasnip = 1,
            buffer = 1,
            path = 1,
          })[entry.source.name] or 0

          return vim_item
        end,
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'buffer' },
      }
    }
  end
end

function M.comment()
  return function()
    local is_comment_loaded, comment = pcall(require, 'Comment')

    if not is_comment_loaded then return end

    comment.setup({
      padding = true,
      sticky = true,
      toggler = {
        line = 'gcc',
        block = 'gbc',
      },
      opleader = {
        line = 'gc',
        block = 'gb',
      },
      pre_hook = function(ctx)
        local U = require 'Comment.utils'
        local location = nil

        if ctx.ctype == U.ctype.block then
          location = require('ts_context_commentstring.utils').get_cursor_location()
        elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
          location = require('ts_context_commentstring.utils').get_visual_start_location()
        end

        return require('ts_context_commentstring.internal').calculate_commentstring {
          key = ctx.ctype == U.ctype.line and '__default' or '__multiline',
          location = location,
        }
      end,
    })
  end
end

function M.filetype()
  return function()
    local glob = vim.g

    glob.did_load_filetypes = 1
  end
end

function M.fzf()
  return function()
    local api = vim.api
    local map = function(...) vim.api.nvim_set_keymap('n', ...) end
    local glob = vim.g
    local opts = { noremap = true, silent = true }

    --@usage fzf layout
    glob.fzf_layout = { down = '50%' }

    --@usage disable preview window
    glob.fzf_preview_window = { right = 'hidden' }

    glob.fzf_nvim_statusline = 0

    -- Open search popup
    map('<C-p>', '<cmd>Files<CR>', opts)
    map('<C-f>', '<cmd>Rg<CR>', opts)
    map('<C-b>', '<cmd>Buffers<CR>', opts)

    glob.fzf_colors = {
      fg      = { 'fg', 'LineNr' },
      bg      = { 'bg', 'EndOfBuffer' },
      hl      = { 'fg', 'Function' },
      ['fg+'] = { 'fg', 'Normal' },
      ['bg+'] = { 'bg', 'EndOfBuffer' },
      ['hl+'] = { 'fg', 'Function' },
      info    = { 'fg', 'Number' },
      border  = { 'fg', 'EndOfBuffer' },
      prompt  = { 'fg', 'Character' },
      pointer = { 'fg', 'Function' },
      marker  = { 'fg', 'Function' },
      spinner = { 'fg', 'Function' },
      header  = { 'fg', 'Statement' }
    }

    --@usage actions for fzf
    glob.fzf_action = {
       ['ctrl-t'] = 'tab split',
       ['ctrl-x'] = 'split',
       ['ctrl-v'] = 'vsplit'
    }

    --@usage files searching
    api.nvim_exec([[command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, <bang>0)]], false)

    --@usage buffers searching
    api.nvim_exec([[command! -bang -nargs=? -complete=dir Buffers call fzf#vim#buffers(<q-args>, <bang>0)]], false)

    --@usage advanced ripgrep integration
    api.nvim_exec([[
      function! RipgrepFzf(query, fullscreen)
        let command_fmt = 'rg --column --no-heading --color=always --smart-case %s -g "!{node_modules,.git,build,dist,.cache,cache,.idea}" || true'
        let initial_command = printf(command_fmt, shellescape(a:query))
        let reload_command = printf(command_fmt, '{q}')
        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
        call fzf#vim#grep(initial_command, 1, a:fullscreen)
      endfunction
      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)
    ]], false)
  end
end

function M.gitsigns()
  return function()
    local is_gitsigns_loaded, gitsigns = pcall(require, 'gitsigns')

    if not is_gitsigns_loaded then return end

    gitsigns.setup {
      numhl = false,
      linehl = false,
      word_diff = false,
      signcolumn = true,
      signs = {
        add = { hl = 'DiffAdd', text = '' },
        change = { hl = 'DiffChange', text = '' },
        delete = { hl = 'DiffDelete', text = '' },
        topdelete = { hl = 'DiffDelete', text = '' },
        changedelete = { hl = 'DiffChange', text = '' },
      },
      status_formatter = nil, -- Use default
      sign_priority = 6,
      debug_mode = false,
      current_line_blame = false,
      update_debounce = 100,
    }
  end
end

function M.icons()
  return function()
    local is_colors_loaded, highlights = pcall(require, 'colors.highlights')
    local is_devicons_loaded, icons = pcall(require, 'nvim-web-devicons')

    if not (is_devicons_loaded or is_colors_loaded) then return end

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

    if not (is_lsp_installer_loaded or is_languages_loaded) then return end

    local api = vim.api
    local cmd = vim.cmd
    local lsp = vim.lsp

    local customize = function()
      local handlers = lsp.handlers
      local fn = vim.fn

      --@usage diagnostics
      handlers['textDocument/publishDiagnostics'] = lsp.with(
        lsp.diagnostic.on_publish_diagnostics,
        {
          signs = true,
          virtual_text = false,
          underline = true,
          severity_sort = false,
        }
      )

      --@usage symbols in the sign column (gutter)
      local signs = { Error = ' ', Warn = ' ', Hint = ' ', Info = ' ' }
      for type, icon in pairs(signs) do
        local hl = 'DiagnosticSign' .. type
        fn.sign_define(hl, { text = icon, texthl = hl })
      end

      local border = {
        {'╭', 'FloatBorder'},
        {'─', 'FloatBorder'},
        {'╮', 'FloatBorder'},
        {'│', 'FloatBorder'},
        {'╯', 'FloatBorder'},
        {'─', 'FloatBorder'},
        {'╰', 'FloatBorder'},
        {'│', 'FloatBorder'},
      }

      --@usage popup customization globly
      local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or border
        return orig_util_open_floating_preview(contents, syntax, opts, ...)
      end

    end

    --@usage invoke customization
    customize()

    local on_attach = function(client, bufnr)
      local buf_set_keymap = function(...) api.nvim_buf_set_keymap(bufnr, ...) end
      local buf_set_option = function(...) api.nvim_buf_set_option(bufnr, ...) end
      local opts = { noremap = true, silent = true }

      --@usage enable completion triggered
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
      buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>',                             opts)
      buf_set_keymap('n', '<leader>gf', '<cmd>lua vim.lsp.buf.references()<CR>',                             opts)
      buf_set_keymap('n', '<leader>gk', '<cmd>lua vim.lsp.buf.hover()<CR>',                                  opts)
      buf_set_keymap('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>',                         opts)
      buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.rename()<CR>',                                 opts)
      buf_set_keymap('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>',                           opts)
      buf_set_keymap('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>',                           opts)
      buf_set_keymap('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>',                            opts)
      buf_set_keymap('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>',                          opts)
      buf_set_keymap('n', '<C-e>',      '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',                     opts)
      buf_set_keymap('n', '<C-w>',      '<cmd>lua vim.lsp.diagnostic.set_loclist({ workspace = true })<CR>', opts)

      --@usage set autocommands conditional on server_capabilities
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
      capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

      return capabilities
    end

    lsp_installer.settings {
      ui = {
        icons = {
          --@usage the list icon to use for installed servers.
          server_installed = '✓',
          --@usage the list icon to use for servers that are pending installation.
          server_pending = '➜',
          --@usage the list icon to use for servers that are not installed.
          server_uninstalled = '✗'
        },
        keymaps = {
          --@usage keymap to expand a server in the UI
          toggle_server_expand = '<CR>',
          --@usage keymap to install a server
          install_server = 'i',
          --@usage keymap to reinstall/update a server
          update_server = 'u',
          --@usage keymap to uninstall a server
          uninstall_server = 'X',
        },
      }
    }

    lsp_installer.on_server_ready(function(server)
      local opts = {
        --@usage map buffer local keybindings when the language server attaches
        on_attach = on_attach,
        --@usage enable snippet support
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

      --@usage apply options
      server:setup(opts)
      cmd [[ do User LspAttachBuffers ]]
    end)
  end
end

function M.lualine()
  return function()
    local is_colors_loaded, highlights = pcall(require, 'colors.highlights')
    local is_lualine_loaded, lualine = pcall(require, 'lualine')

    if not (is_lualine_loaded or is_colors_loaded) then return end

    local colors = highlights.colors
    local fn = vim.fn
    local cmd = vim.cmd

    local conditions = {
      buffer_not_empty = function()
        return fn.empty(fn.expand('%:t')) ~= 1
      end,
      hide_in_width = function()
        return fn.winwidth(0) > 80
      end,
      check_git_workspace = function()
        local filepath = fn.expand('%:p:h')
        local gitdir = fn.finddir('.git', filepath .. ';')

        return gitdir and #gitdir > 0 and #gitdir < #filepath
      end,
    }

    local config = {
      options = {
        component_separators = '',
        section_separators = '',
        theme = {
          normal = { c = { fg = colors.fg, bg = colors.extraBg } },
          inactive = { c = { fg = colors.fg, bg = colors.extraBg } },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    }

    local get_mode_color = function()
      local mode_colors = {
        n = colors.blue,
        i = colors.green,
        c = colors.yellow,
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

    local function ins_left(component)
      table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
      table.insert(config.sections.lualine_x, component)
    end

    ins_left({
      function()
        return '▊'
      end,
      color = { fg = colors.blue },
      padding = { left = 0, right = 1 },
    })

    ins_left({
      function()
        local alias = {
          n = 'NORMAL',
          i = 'INSERT',
          c = 'COMMAND',
          V = 'VISUAL',
          [''] = 'VISUAL',
          v = 'VISUAL',
          R = 'REPLACE',
          s = 'SNIPPET',
        }
        local icons = {
          n = ' ',
          i = ' ',
          c = 'גּ ',
          V = '﬏ ',
          [''] = '﬏ ',
          v = '﬏ ',
          R = ' ',
          s = ' ',
        }
        cmd('hi! LualineMode guifg='..get_mode_color()..' guibg='..colors.extraBg)
        local alias_mode = alias[fn.mode()]
        local icon = icons[fn.mode()]
        if not alias_mode then
          alias_mode = fn.mode()
        end
        if not icon then
          icon = ' '
        end
        return icon..alias_mode
      end,
      color = 'LualineMode',
      padding = { left = 0, right = 1 },
      cond = conditions.hide_in_width,
    })

    -- ins_left({
    --   'filesize',
    --   cond = conditions.buffer_not_empty,
    -- })

    ins_left({
      'filename',
      color = { fg = colors.fg, gui = 'bold' },
      cond = conditions.buffer_not_empty and conditions.hide_in_width,
    })

    ins_left({
      'branch',
      icon = '',
      color = { fg = colors.magenta, gui = 'bold' },
      cond = conditions.hide_in_width,
    })

    ins_left({
      'diff',
      symbols = { added = ' ', modified = '柳', removed = ' ' },
      diff_color = {
        added = { fg = colors.green },
        modified = { fg = colors.orange },
        removed = { fg = colors.red },
      },
      cond = conditions.hide_in_width,
    })

    ins_left({
      function()
        return '%='
      end,
      cond = conditions.hide_in_width,
    })

    -- ins_left({
    --   -- Lsp server name .
    --   function()
    --     local msg = 'No Active Lsp'
    --     local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    --     local clients = vim.lsp.get_active_clients()
    --     if next(clients) == nil then
    --       return msg
    --     end
    --     for _, client in ipairs(clients) do
    --       local filetypes = client.config.filetypes
    --       if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
    --         return client.name
    --       end
    --     end
    --     return msg
    --   end,
    --   icon = '  LSP:',
    --   color = { fg = '#ffffff', gui = 'bold' },
    -- })

    ins_right({
      'location',
      color = { fg = colors.blue, gui = 'bold' },
      padding = { left = 1, right = 1 },
    })

    ins_right({
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      diagnostics_color = {
        error = { fg = colors.red },
        warn = { fg = colors.yellow },
        info = { fg = colors.blue },
        hint = { fg = colors.blue },
      },
      padding = { left = 1, right = 1 },
      cond = conditions.hide_in_width,
    })

    ins_right({
      'filetype',
      padding = { left = 1, right = 1 },
    })

    ins_right({
      'o:encoding',
      fmt = string.upper,
      color = { fg = colors.green, gui = 'bold' },
      padding = { left = 1, right = 1 },
      cond = conditions.hide_in_width,
    })

    -- ins_right({
    --   'fileformat',
    --   fmt = string.upper,
    --   icons_enabled = true,
    --   color = { fg = colors.green, gui = 'bold' },
    --   padding = { left = 1, right = 1 },
    -- })

    -- ins_right({ 'progress',
    --   padding = { left = 1, right = 1 },
    -- })

    ins_right({
      function()
        return '▊'
      end,
      color = { fg = colors.blue },
      padding = { right = 0 },
    })

    lualine.setup(config)
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
      use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the glob scope
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
      hijack_netrw        = false,
      -- open the tree when running this setup function
      open_on_setup       = false,
      -- will not open on setup if the filetype is in this list
      ignore_ft_on_setup  = {},
      -- disable diagnostic in nvim tree
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = '',
          info = '',
          warning = '',
          error = '',
        },
      },
      -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
      open_on_tab         = false,
      -- hijack the cursor in the tree to put it at the start of the filename
      hijack_cursor       = false,
      -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
      update_cwd          = false,
      renderer = {
        indent_markers = {
          enable = true,
          icons = {
            corner = '└ ',
            edge = '│ ',
            none = '  ',
          },
        },
      },
      -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
      update_focused_file = {
        -- enables the feature
        enable      = true,
        -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
        -- only relevant when `update_focused_file.enable` is true
        update_cwd  = true,
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
        preserve_window_proportions = true,
        -- width of the window, can be either a number (columns) or a string in `%`
        width = 35,
        -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
        side = 'left',
        -- hide root dir
        hide_root_folder = true,
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

function M.saga()
  return function()
    local is_saga_loaded, saga = pcall(require, 'lspsaga')

    if not is_saga_loaded then return end

    saga.setup {
      debug = false,
      use_saga_diagnostic_sign = false,
      --@usage diagnostic sign
      error_sign = '',
      warn_sign = '',
      hint_sign = '',
      infor_sign = '',
      diagnostic_header_icon = ' ',
      --@usage code action title icon
      code_action_icon = ' ',
      code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
      },
      finder_definition_icon = '  ',
      finder_reference_icon = '  ',
      max_preview_lines = 10,
      finder_action_keys = {
        open = '<CR>',
        vsplit = 'v',
        split = 'x',
        quit = '<C-c>',
        scroll_down = '<C-d>',
        scroll_up = '<C-u>',
      },
      code_action_keys = {
        quit = '<C-c>',
        exec = '<CR>',
      },
      rename_action_keys = {
        quit = '<C-c>',
        exec = '<CR>',
      },
      definition_preview_icon = '  ',
      border_style = 'round',
      rename_prompt_prefix = '➤',
      rename_output_qflist = {
        enable = false,
        auto_open_qflist = false,
      },
      server_filetype_map = {},
      diagnostic_prefix_format = '%d. ',
      diagnostic_message_format = '%m %c',
      highlight_prefix = false,
    }
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
        prompt_prefix = '  ',
        selection_caret = '  ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        selection_strategy = 'reset',
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        layout_config = {
          width = 0.8,
          preview_cutoff = 120,
          horizontal = {
            preview_width = function(_, cols, _)
              if cols < 120 then
                return math.floor(cols * 0.4)
              end
              return math.floor(cols * 0.5)
            end,
            mirror = false,
          },
          vertical = { mirror = false },
        },
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden',
          '--glob=!.git/',
        },
        mappings = {
          i = {
            ['<Tab>'] = actions.move_selection_next,
            ['<S-Tab>'] = actions.move_selection_previous,
            ['<C-c>'] = actions.close,
            ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
            ['<C-j>'] = actions.cycle_history_next,
            ['<C-k>'] = actions.cycle_history_prev,
            ['<CR>'] = actions.select_default,
          },
          n = {
            ['<Tab>'] = actions.move_selection_next,
            ['<S-Tab>'] = actions.move_selection_previous,
            ['<C-c>'] = actions.close,
            ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
            ['<CR>'] = actions.select_default,
          },
        },
        file_ignore_patterns = {
          'scratch/.*',
          'node_modules/.*',
          'build/.*',
          'dist/.*',
          '.git/.*',
          '.next/*',
        },
        path_display = { shorten = 6 },
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        disable_devicons = false,
        set_env = { ['COLORTERM'] = 'truecolor' },
        file_previewer = previewers.vim_buffer_cat.new,
        grep_previewer = previewers.vim_buffer_vimgrep.new,
        qflist_previewer = previewers.vim_buffer_qflist.new,
        file_sorter = sorters.get_fuzzy_file,
        generic_sorter = sorters.get_generic_fuzzy_sorter,
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        live_grep = {
          --@usage don't include the filename in the search results
          only_sort_text = true,
        },
      },
      extensions = {
        fzf = {
          --@usage false will only do exact matching
          fuzzy = true,
          --@usage override the generic sorter
          override_generic_sorter = true,
          --@usage override the file sorter
          override_file_sorter = true,
          --@usage or "ignore_case" or "respect_case"
          case_mode = 'smart_case',
        },
      },
    }

    telescope.load_extension('fzf')

    local map = function(...) vim.api.nvim_set_keymap('n', ...) end
    local opts = { noremap = true, silent = true }

    map('<C-p>', '<cmd>Telescope find_files hidden=true<CR>', opts)
    map('<C-f>', '<cmd>Telescope live_grep<CR>', opts)
    map('<C-b>', '<cmd>Telescope buffers<CR>', opts)
    map('<C-e>', '<cmd>Telescope lsp_document_diagnostics<CR>', opts)
    map('<C-w>', '<cmd>Telescope lsp_workspace_diagnostics<CR>', opts)
  end
end

function M.treesitter()
  return function()
    local is_treesitter_loaded, treesitter_configs = pcall(require, 'nvim-treesitter.configs')

    if not is_treesitter_loaded then return end

    treesitter_configs.setup {
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
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
        --@usage debounced time for highlighting nodes in the playground from source code
        updatetime = 25,
        --@usage whether the query persists across vim sessions
        persist_queries = false,
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
      },
      autotag = {
        enable = true,
      },
      rainbow = {
        enable = true,
        --@usage list of disabled languages
        -- disable = { 'jsx', 'cpp' },
        --@usage also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        extended_mode = true,
        --@usage do not enable for files with more than n lines, int
        max_file_lines = nil,
        --@usage table of hex strings
        -- colors = {},
        --@usage table of colour name strings
        -- termcolors = {}
      }
    }
  end
end

return M
