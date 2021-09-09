local global = vim.g

-- File extensions where this plugin is enabled
global.closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts,*.vue'

-- List of non-closing tags self-closing in the specified files
global.closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx,*.vuex'

-- Make the list of non-closing tags case-sensitive (e.g. `<Link>` will be>
global.closetag_emptyTags_caseSensitive = 1
