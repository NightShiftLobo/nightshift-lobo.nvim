local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local float_bg = cfg.transparent and c.none or c.mantle
  local prompt_bg = cfg.transparent and c.none or c.surface

  util.apply({
    TelescopeBorder = { fg = c.overlay0, bg = float_bg },
    TelescopeNormal = { fg = c.text, bg = float_bg },
    TelescopePreviewNormal = { fg = c.text, bg = float_bg },
    TelescopeResultsNormal = { fg = c.overlay2, bg = float_bg },

    TelescopePromptNormal = { fg = c.text, bg = prompt_bg },
    TelescopePromptBorder = { fg = c.overlay0, bg = prompt_bg },
    TelescopePromptPrefix = { fg = c.flamingo, bg = prompt_bg },
    TelescopePromptCounter = { fg = c.overlay1, bg = prompt_bg },
    TelescopePromptTitle = { fg = c.bg, bg = c.red, bold = true },

    TelescopePreviewBorder = { fg = c.overlay0, bg = float_bg },
    TelescopePreviewTitle = { fg = c.bg, bg = c.green, bold = true },

    TelescopeResultsBorder = { fg = c.overlay0, bg = float_bg },
    TelescopeResultsTitle = { fg = c.bg, bg = c.lavender, bold = true },
    TelescopeSelection = { fg = c.flamingo, bg = c.surface, bold = true },
    TelescopeSelectionCaret = { fg = c.flamingo, bg = c.surface },
    TelescopeMatching = { fg = c.blue, bold = true },

    TelescopeMultiSelection = { fg = c.mauve, bg = c.surface, bold = true },
    TelescopeMultiIcon = { fg = c.mauve, bg = c.surface },
  })
end

return M
