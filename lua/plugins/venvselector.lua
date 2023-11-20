return {
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-telescope/telescope.nvim",
            "mfussenegger/nvim-dap-python",
        },
        cmd = "VenvSelect",
        opts = function(_, opts)
            if require("lazyvim.util").has("nvim-dap-python") then
                opts.dap_enabled = true
            end
            return vim.tbl_deep_extend("force", opts, {
                anaconda = {
                    python_parent_dir = nil,
                    python_executable = "python",
                },
                search_workspace = true,
                parents = 2,
                auto_refresh = true,
                notify_user_on_activate = true,
                pdm_path = "c:/users/ark010/appdata/roaming/python/scripts",
                anaconda_base_path = "C:/Users/ARK010/AppData/Local/miniconda3",
                anaconda_envs_path = "C:/Users/ARK010/AppData/local/miniconda3/envs",
                name = {
                    "venv",
                    ".venv",
                    "env",
                    ".env",
                },
            })
        end,
        keys = {
            {
                "<leader>cv",
                "<cmd>:VenvSelect<cr>",
                desc = "Select VirtualEnv",
            },
            {
                "<leader>cc",
                "<cmd>:VenvSelectCached<cr>",
                desc = "Select Cached VirtualEnv",
            },
        },
    },
}
