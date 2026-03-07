local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local float_bg = cfg.transparent and c.none or c.bg_alt
  local prompt_bg = cfg.transparent and c.none or c.surface

  util.apply({
    TelescopeBorder = { fg = c.border, bg = float_bg },
    TelescopeNormal = { fg = c.text, bg = float_bg },
    TelescopePreviewNormal = { fg = c.text, bg = float_bg },
    TelescopeResultsNormal = { fg = c.fg_dim, bg = float_bg },

    TelescopePromptNormal = { fg = c.text, bg = prompt_bg },
    TelescopePromptBorder = { fg = c.border, bg = prompt_bg },
    TelescopePromptPrefix = { fg = c.red, bg = prompt_bg },
    TelescopePromptCounter = { fg = c.fg_soft, bg = prompt_bg },
    TelescopePromptTitle = { fg = c.bg, bg = c.red, bold = true },

    TelescopePreviewBorder = { fg = c.border, bg = float_bg },
    TelescopePreviewTitle = { fg = c.bg, bg = c.green, bold = true },

    TelescopeResultsBorder = { fg = c.border, bg = float_bg },
    TelescopeResultsTitle = { fg = c.bg, bg = c.blue_soft, bold = true },
    TelescopeSelection = { fg = c.red, bg = c.surface, bold = true },
    TelescopeSelectionCaret = { fg = c.red, bg = c.surface },
    TelescopeMatching = { fg = c.blue, bold = true },

    TelescopeMultiSelection = { fg = c.purple, bg = c.surface, bold = true },
    TelescopeMultiIcon = { fg = c.purple, bg = c.surface },
  })
end

return M
