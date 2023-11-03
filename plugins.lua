local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "black",
        "mypy",
        "ruff",
        "r-languageserver",
      },
    },
  },
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function()
      require("project_nvim").setup {
        require("nvim-tree").setup({
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true
  },
})
    }
  end,
},
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {
            "nvimtools/none-ls.nvim",
        config = function()
            require "custom.configs.null-ls"
        end,
    },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
    end,
    },
    {
        "mbbill/undotree",
        lazy = false
    },
    {
        "tpope/vim-fugitive",
        cmd = { "Git" },
    },
    {
        "theprimeagen/vim-be-good",
        cmd = { "VimBeGood" }
    },
    {
        "kmontocam/nvim-conda",
        event = "VeryLazy",
        cmd = { "CondaActivate", "CondaDeactivate"},
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "max397574/better-escape.nvim",
        event = "VeryLazy",
        config = function()
          require "custom.configs.external.better-escape"
        end,
    },
}
return plugins
