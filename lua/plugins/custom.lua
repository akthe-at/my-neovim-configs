return {
    -- {
    --     "soulis-1256/hoverhints.nvim",
    --     lazy = false,
    -- },
    {
        "jalvesaq/Nvim-R",
        lazy = false,
    },
    {
        "m4xshen/hardtime.nvim",
        lazy = false,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
        },
        opts = {
            disabled_filetypes = {
                "NvimTree",
                "lazy",
                "mason",
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "html",
                "lua",
                "markdown",
                "htmldjango",
                "markdown_inline",
                "python",
                "r",
                "css",
                "sql",
                "query",
                "regex",
                "vim",
            },
        },
    },
    {
        "mfussenegger/nvim-dap",
        optional = true,
        dependencies = {
            "mfussenegger/nvim-dap-python",
            keys = {
                {
                    "<leader>dPt",
                    function()
                        require("dap-python").test_method()
                    end,
                    desc = "Debug Method",
                    ft = "python",
                },
                {
                    "<leader>dPc",
                    function()
                        require("dap-python").test_class()
                    end,
                    desc = "Debug Class",
                    ft = "python",
                },
            },
            config = function()
                local path = require("mason-registry")
                    .get_package("debugpy")
                    :get_install_path()
                require("dap-python").setup(path .. "/venv/Scripts/python")
            end,
        },
    },
    {
        "Vigemus/iron.nvim",
        keys = {
            { "<leader>rs", vim.cmd.IronRepl, desc = "󱠤 Toggle REPL" },
            { "<leader>rr", vim.cmd.IronRestart, desc = "󱠤 Restart REPL" },
            { "<leader>rh", vim.cmd.IronHide, desc = "Hide REPL" },
            { "<leader>rf", vim.cmd.IronFocus, desc = "Focus REPL" },
            {
                "<leader>sc",
                mode = { "n", "x" },
                desc = "󱠤 Send-to-REPL Operator",
            },
            { "<leader>rl", desc = "󱠤 Send Line to REPL" },
        },
        main = "iron.core",
        opts = {
            keymaps = {
                send_line = "<space>il",
                visual_send = "<space>ic",
                send_motion = "<space>ic",
                interrupt = "<space>i<space>",
                exit = "<space>iq",
                clear = "<space>ie",
                send_file = "<space>if",
            },
            config = {
                repl_open_cmd = "vertical bot 60 split",
                repl_definition = {
                    python = {
                        command = function()
                            local ipythonAvailable = vim.fn.executable(
                                "ipython"
                            ) == 1
                            local binary = ipythonAvailable and "ipython"
                                or "python"
                            return { binary }
                        end,
                    },
                    r = {
                        command = function()
                            local filename = vim.fn.executable("radian") == 1
                            local binary = filename and "radian" or "R"
                            return { binary }
                        end,
                    },
                },
            },
        },
    },
}
