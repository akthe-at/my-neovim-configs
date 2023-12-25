return {
    -- current color scheme
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            return {
                require("rose-pine").setup({
                    variant = "auto",
                    dark_variant = "main",

                    disable_background = true,
                    disable_nc_background = true,
                    disable_float_background = true,

                    groups = {
                        -- background = "pine", --"#133340", --"#255159",
                        -- panel = "surface",   -- "#133340",
                        border = "pine", --"pine",
                    },

                    highlight_groups = {
                        -- blend colours against the 'base' background
                        ColorColumn = { bg = "pine", blend = 40 },
                        CursorLine = { bg = "pine", blend = 21 },

                        Search = { bg = "rose", inherit = false },
                        FloatBorder = { bg = "none" },
                        LineNr = { fg = "#f6c177" }, -- gold

                        -- nvim-cmp
                        -- winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None"
                        CmpPmenu = { bg = "#011b26" },
                        CmpSel = { bg = "pine" },
                        CmpDoc = { bg = "#011b26" },
                    },
                }),
            }
        end,
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#1a1b26",
            timeout = 3000,
            max_height = function()
                return math.floor(vim.o.lines * 0.75)
            end,
            max_width = function()
                return math.floor(vim.o.columns * 0.75)
            end,
            on_open = function(win)
                vim.api.nvim_win_set_config(win, { zindex = 100 })
            end,
        },
    },
}
