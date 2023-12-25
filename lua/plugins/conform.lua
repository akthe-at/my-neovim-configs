return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                sql = { "sql_formatter" },
                htmldjango = { "djlint" },
                css = { "prettier" },
            },
        },
    },
    {
        "stevearc/oil.nvim",
        opts = {
            show_hidden = true,
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
        },
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
