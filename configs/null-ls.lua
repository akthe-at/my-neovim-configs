local present, null_ls = pcall(require, "null-ls")
if not present then
    return
end

local b = null_ls.builtins
local sources = {
    --diagnostics
    b.diagnostics.mypy,
    b.formatting.ruff,
    --formatters
    --b.formatting.ruff,
    b.formatting.black,
    --code actions
    b.code_actions.gitsigns,
  }

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup {
  debug = true,
  sources = sources,

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
