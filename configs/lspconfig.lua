local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
local servers = { "pyright", "sqlls", "r_language_server" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"python"},
-- })
--
-- lspconfig.r_language_server.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"r", "rmd"},
-- })
--
-- lspconfig.sqlls.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"sql"},
-- })
