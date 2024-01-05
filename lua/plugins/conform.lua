return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                sql = { "sql_formatter" },
                htmldjango = { "djlint" },
                css = { "prettier" },
                r = {},
            },
        },
    },
    {
        "stevearc/oil.nvim",
        opts = {
            default_file_explorer = true,
            show_hidden = true,
            delete_to_trash = true,
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
            view_options = {
                show_hidden = true,
            },
        },
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
