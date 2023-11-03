local M = {}

M.mason = {
  ensure_installed = {
    "html-lsp",
    "css-lsp",
    "pyright",
    "lua-language-server",
    "nil_ls",
  },
}

M.treesitter = {
  ensure_installed = {
    "html",
    "css",
    "bash",
    "python",
    "markdown",
    "toml",
    "yaml",
    "r",
    "sql",
  },
}

return M