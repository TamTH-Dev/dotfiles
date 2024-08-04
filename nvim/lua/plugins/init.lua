local is_packer_init_loaded, packer = pcall(require, "plugins.packerInit")

if not is_packer_init_loaded then
    return
end

packer.startup(function()
    local use = packer.use
    --[[ Plugins' setup and config ]]
    local config = require("plugins.config")
    local setup = require("plugins.setup")

    --[[ Plugins manager ]]
    use({
        "wbthomason/packer.nvim",
        commit = "ea0cc3c",
    })

    --[[ Colorscheme ]]
    use({
        "folke/tokyonight.nvim",
        config = config.tokyonight(),
        commit = "b0e7c73",
    })

    --[[ Functions supporter ]]
    use({
        "nvim-lua/plenary.nvim",
        commit = "a3e3bc8",
    })

    --[[ LSP configuration ]]
    use({
        "williamboman/mason.nvim",
        commit = "e2f7f90",
        config = config.mason(),
    })
    use({
        "williamboman/mason-lspconfig.nvim",
        commit = "ba9c2f0",
        config = config.mason_lspconfig(),
        after = "mason.nvim",
    })
    use({
        "jose-elias-alvarez/null-ls.nvim",
        commit = "0010ea9",
        config = config.null_ls(),
        requires = "nvim-lua/plenary.nvim",
    })
    use({
        "jayp0521/mason-null-ls.nvim",
        commit = "de19726",
        config = config.mason_null_ls(),
    })
    use({
        "neovim/nvim-lspconfig",
        commit = "e6528f4",
        config = config.lsp(),
    })

    --[[ Completion supporters ]]
    use({
        "hrsh7th/nvim-cmp",
        commit = "ae644fe",
        config = config.cmp(),
        requires = {
            {
                "hrsh7th/cmp-nvim-lsp",
                commit = "39e2eda",
            },
            {
                "rafamadriz/friendly-snippets",
                commit = "00ebcaa",
            },
            {
                "L3MON4D3/LuaSnip",
                commit = "7552e65",
                config = config.luasnip(),
            },
            {
                "saadparwaiz1/cmp_luasnip",
                commit = "05a9ab2",
            },
            {
                "hrsh7th/cmp-buffer",
                commit = "3022dbc",
            },
            {
                "hrsh7th/cmp-path",
                commit = "91ff86c",
            },
        },
    })

    --[[ Parser ]]
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        commit = "a7a3b9c",
        config = config.treesitter(),
        requires = {
            --[[ Autopairs supporter ]]
            {
                "windwp/nvim-autopairs",
                commit = "e38c5d8",
                config = config.autopairs(),
            },
        },
    })
    --[[ Auto-close tags ]]
    --[[ use({ ]]
    --[[ 	"windwp/nvim-ts-autotag", ]]
    --[[ 	commit = "40615e9", ]]
    --[[ }) ]]
    --[[ Set the commentstring option based on the cursor location in the file ]]
    --[[ use({ ]]
    --[[ 	"JoosepAlviste/nvim-ts-context-commentstring", ]]
    --[[ 	commit = "0bf8fbc", ]]
    --[[ }) ]]
    --[[ Surround parentheses, brackets, quotes, XML tags, and more ]]
    use({
        "tpope/vim-surround",
        commit = "3d188ed",
    })

    --[[ Icons suppliers ]]
    use({
        "nvim-tree/nvim-web-devicons",
        commit = "3722e3d",
        config = config.icons(),
    })

    --[[ Better performance for large projects ]]
    use({
        "ibhagwan/fzf-lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
        commit = "73bdec9",
        config = config.fzf(),
        setup = setup.fzf(),
    })
    --[[ Fuzzy search ]]
    --[[ use({ ]]
    --[[   "nvim-telescope/telescope.nvim", ]]
    --[[   commit = "a3f17d3", ]]
    --[[   setup = setup.telescope(), ]]
    --[[   config = config.telescope(), ]]
    --[[   requires = { ]]
    --[[     { ]]
    --[[       "nvim-telescope/telescope-fzf-native.nvim", ]]
    --[[       commit = "580b6c4", ]]
    --[[       run = ]]
    --[[       "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix buil", ]]
    --[[     }, ]]
    --[[   }, ]]
    --[[ }) ]]
    --[[ Status line ]]
    use({
        "nvim-lualine/lualine.nvim",
        commit = "544dd15",
        config = config.lualine(),
    })

    --[[ Buffer management bar ]]
    use({
        "akinsho/bufferline.nvim",
        commit = "0b2fd86",
        setup = setup.bufferline(),
        config = config.bufferline(),
    })

    --[[ File explorer ]]
    use({
        "nvim-tree/nvim-tree.lua",
        commit = "48d0e82",
        setup = setup.nvimtree(),
        config = config.nvimtree(),
    })

    --[[ Commenter ]]
    use({
        "JoosepAlviste/nvim-ts-context-commentstring",
        commit = "6b5f95a",
        config = config.tscontextcommentstring(),
    })
    use({
        "numToStr/Comment.nvim",
        commit = "e30b7f2",
        config = config.comment(),
    })

    --[[ Fancy start screen ]]
    use({
        "goolord/alpha-nvim",
        commit = "41283fb",
        config = config.alpha(),
    })

    --[[ Emmet ]]
    use({
        "mattn/emmet-vim",
        commit = "3fb2f63",
        ft = {
            "html",
            "css",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
        },
        setup = setup.emmet(),
    })

    --[[ Delete all buffers except one ]]
    use({
        "kazhala/close-buffers.nvim",
        commit = "3acbcad",
        setup = setup.close_buffers(),
    })

    --[[ Custom escape ]]
    use({
        "max397574/better-escape.nvim",
        commit = "d337e02",
        config = config.better_escape(),
    })

    --[[ Git indicators ]]
    use({
        "lewis6991/gitsigns.nvim",
        commit = "564849a",
        config = config.gitsigns(),
    })
end)

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
    command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
    group = packer_group,
    pattern = vim.fn.expand("$MYVIMRC"),
})
