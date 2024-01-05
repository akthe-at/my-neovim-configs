return {

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "rose-pine",
        },
    },
    {
        "folke/tokyonight.nvim",
        enabled = true,
        lazy = true,
        opts = {
            transparent = true,
            style = "storm",
            terminal_colors = true,
            styles = {
                sidebars = "dark",
                floats = "dark",
                comments = { italic = true },
                keywords = { italic = true },
            },
        },
    },
    { "nvim-treesitter/nvim-treesitter-context", enabled = false },
}
