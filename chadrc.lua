---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'kanagawa',
    -- hl_override = {
    --     CmpItemAbbrMatch = { fg = "#569CD6", bg = "NONE"},
    --     CmpItemKindFunction = { fg = "#C586C0", bg = "NONE"},
    --     CmpItemKindMethod = { fg = "#C586C0", bg = "NONE"},
    --     CmpItemKindVariable = { fg = "#9CDCFE", bg = "NONE"},
    --     CmpItemKindInterface = { fg = "#9CDCFE", bg = "NONE"},
    --     CmpItemKindProperty = { fg = "#D4D4D4", bg = "NONE"},
    --     CmpItemKindUnit = { fg = "#D4D4D4", bg = "NONE"},
    --     CmpItemKindKeyword = { fg = "#D4D4D4", bg = "NONE"},
    --     Boolean = { fg = "#569CD6"},
    --     CmpItemKindClass = { fg = "#ee9d28", bg = "NONE"},
    -- },
    transparency = true,
    cmp = {
        style = "flat_dark",
        },
    nvdash = {
        load_on_startup = true,

    }
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
M.settings = "custom.extras"

return M
