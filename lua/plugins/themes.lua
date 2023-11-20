return {
    {
        "catppuccin/nvim",
        lazy = true,
        enabled = false,
        name = "catppuccin",
        opts = {
            transparent_mode = false,
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
    },
    {
        "rebelot/kanagawa.nvim",
        enabled = false,
        lazy = true,
        priority = 1000,
    },
    {
        "AlexvZyl/nordic.nvim",
        enabled = false,
        lazy = true,
        priority = 1000,
        config = function()
            require("nordic").load()
        end,
    },
    {
        "navarasu/onedark.nvim",
        enabled = false,
        priority = 1000, -- make sure to load this before all the other start plugins
    },
    {
        "Mofiqul/vscode.nvim",
        enabled = false,
        priority = 1000,
    },
    {
        "ribru17/bamboo.nvim",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            require("bamboo").setup({
                -- optional configuration here
            })
            require("bamboo").load()
        end,
    },
}
