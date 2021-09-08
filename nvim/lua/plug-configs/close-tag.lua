-- File extensions where this plugin is enabled
vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue'

-- List of non-closing tags self-closing in the specified files
vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.vuex'

-- Make the list of non-closing tags case-sensitive (e.g. `<Link>` will be>
vim.g.closetag_emptyTags_caseSensitive = 1