local c = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
  util.apply({
    TelescopeNormal = { fg = c.fg, bg = c.surface },
    TelescopeBorder = { fg = c.border, bg = c.surface },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_alt },
    TelescopePromptBorder = { fg = c.border, bg = c.bg_alt },
    TelescopePromptTitle = { fg = c.bg, bg = c.accent, bold = true },
    TelescopePreviewTitle = { fg = c.bg, bg = c.teal, bold = true },
    TelescopeResultsTitle = { fg = c.bg, bg = c.yellow, bold = true },
    TelescopeSelection = { fg = c.fg, bg = c.surface_alt },
    TelescopeSelectionCaret = { fg = c.accent, bg = c.surface_alt },
    TelescopeMatching = { fg = c.accent, bold = true },
  })
end

return M
