local global = vim.g

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
