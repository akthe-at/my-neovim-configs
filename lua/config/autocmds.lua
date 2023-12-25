-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python", -- filetype for which to run the autocmd
    callback = function()
        -- use pep8 standards
        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4

        -- folds based on indentation https://neovim.io/doc/user/fold.html#fold-indent
        -- if you are a heavy user of folds, consider using `nvim-ufo`
        vim.opt_local.foldmethod = "indent"

        -- automatically capitalize boolean values. Useful if you come from a
        -- different language, and lowercase them out of habit.
        vim.cmd.inoreabbrev("<buffer> true True")
        vim.cmd.inoreabbrev("<buffer> false False")
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "r", -- filetype for which to run the autocmd
    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2

        -- folds based on indentation https://neovim.io/doc/user/fold.html#fold-indent
        -- if you are a heavy user of folds, consider using `nvim-ufo`
        vim.opt_local.foldmethod = "indent"

        -- automatically capitalize boolean values. Useful if you come from a
        -- different language, and lowercase them out of habit.
        vim.cmd.inoreabbrev("<buffer> true TRUE")
        vim.cmd.inoreabbrev("<buffer> false FALSE")
        vim.cmd.inoreabbrev("<buffer> True TRUE")
        vim.cmd.inoreabbrev("<buffer> False FALSE")
    end,
})
