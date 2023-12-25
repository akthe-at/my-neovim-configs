-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.g.copilot_proxy_strict_ssl = false
vim.g.R_auto_start = 1
vim.g.R_objbr_place = "console,below"
vim.g.R_objbr_auto_start = 1
vim.g.R_app = "R"
vim.g.R_cmd = "R"
vim.g.R_assign = 0
vim.g.R_nvimpager = "horizontal"
vim.g.R_hl_term = 1
vim.g.R_bracketed_paste = 0
vim.g.R_args = {}
vim.g.R_path = "C:/Users/ARK010/AppData/Local/Programs/R/R-4.3.1/bin"
vim.g.R_path =
    "C:\\rtools40\\mingw64\\bin;C:\\rtools40\\usr\\bin;C:\\Users\\ARK010\\AppData\\Local\\Programs\\R\\R-4.3.1\\bin\\x64"
-- vim.g.R_path =
--     "C:\\rtools40\\mingw64\\bin;C:\\rtools40\\usr\\bin;C:\\Users\\ARK010\\AppData\\Local\\Programs\\R\\R-4.3.1\\bin\\x64"
vim.opt.colorcolumn = "80"
vim.opt.smarttab = true
vim.opt.undodir = os.getenv("USERPROFILE") .. "/nvim-data/undo"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.backup = false
vim.opt.swapfile = false
-- vim.opt.signcolumn = "yes"
vim.g.python3_host_prog = 0
vim.g.everforest_background = "hard"
vim.g.everforest_dim_inactive_windows = 1
vim.g.everforest_ui_contrast = "high"
vim.g.everforest_enable_italic = 0
vim.g.everforest_transparent_background = 1
vim.g.everforest_better_performance = 1
vim.g.python_host_prog =
    "C:\\Users\\ARK010\\AppData\\Local\\Programs\\Python\\Python312\\python.exe"
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
