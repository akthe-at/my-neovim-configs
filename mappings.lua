local M = {}


M.telescope = {
  plugin = true,
  n = {
    ["<leader>pv"] = {"<cmd> Telescope projects <CR>"}
  }
}
return M
