return {
    {
        "theprimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>hm",
                "<cmd>lua require('harpoon.mark').add_file()<cr>",
                desc = "mark file with harpoon",
            },
            {
                "hn",
                "<cmd>lua require('harpoon.ui').nav_next()<cr>",
                desc = "go to next harpoon mark",
            },
            {
                "hp",
                "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
                desc = "go to previous harpoon mark",
            },
            {
                "<leader>ha",
                "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
                desc = "show harpoon marks",
            },
            {
                "<leader>hz",
                "<cmd>Telescope harpoon marks<cr>",
                desc = "show harpoon marks in telescope",
            },
        },
    },
}
