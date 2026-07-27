return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = {
      preset = "none",
      ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
    }
    opts.completion.list = {
      selection = {
        preselect = false,
        auto_insert = false,
      },
    }
    pcall(vim.keymap.del, { "i", "s" }, "<Tab>")
    pcall(vim.keymap.del, { "i", "s" }, "<S-Tab>")
    return opts
  end,
  -- opts = {
  --   keymap = {
  --     preset = "none",
  --     ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
  --     ["<S-Tab>"] = { "snippet_forward", "select_prev", "fallback" },
  --     ["<CR>"] = { "accept", "fallback" },
  --     ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
  --     ["<C-e>"] = { "hide", "fallback" },
  --   },
  -- },
  -- completion = {
  --   list = {
  --     selection = { preselect = false, auto_insert = false },
  --   },
  -- },
}
