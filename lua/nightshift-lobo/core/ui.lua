local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local normal_bg = cfg.transparent and c.none or c.bg
  local float_bg = cfg.transparent and c.none or c.mantle
  local menu_bg = cfg.transparent and c.none or c.mantle

  util.apply({
    NormalFloat = { fg = c.text, bg = float_bg },
    FloatBorder = { fg = c.overlay0, bg = float_bg },
    FloatTitle = { fg = c.bg, bg = c.accent, bold = true },
    FloatShadow = { bg = c.overlay0, blend = 80 },
    FloatShadowThrough = { bg = c.overlay0, blend = 100 },

    Pmenu = { fg = c.overlay2, bg = menu_bg },
    PmenuSel = { fg = c.text, bg = c.surface, bold = true },
    PmenuMatch = { fg = c.text, bold = true },
    PmenuMatchSel = { fg = c.accent, bg = c.surface, bold = true },
    PmenuExtra = { fg = c.overlay0 },
    PmenuExtraSel = { fg = c.overlay0, bg = c.surface, bold = true },
    PmenuSbar = { bg = c.surface },
    PmenuThumb = { bg = c.overlay0 },

    WildMenu = { fg = c.text, bg = c.surface },

    DiffAdd = { fg = c.green, bg = c.diff_add },
    DiffChange = { fg = c.blue_soft, bg = c.diff_change },
    DiffDelete = { fg = c.red, bg = c.diff_delete },
    DiffText = { fg = c.accent, bg = c.surface_alt, bold = true },

    Added = { fg = c.green },
    Changed = { fg = c.blue_soft },
    Removed = { fg = c.red },
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.blue_soft },

    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.yellow },
    SpellLocal = { undercurl = true, sp = c.blue },
    SpellRare = { undercurl = true, sp = c.green },

    MsgArea = { fg = c.subtext0, bg = normal_bg },
    MsgSeparator = { fg = c.overlay0, bg = normal_bg },
    Substitute = { fg = c.bg, bg = c.pink },

    markdownHeadingDelimiter = { fg = c.accent, bold = true },
    markdownH1 = { fg = c.heading_1, bold = true },
    markdownH2 = { fg = c.heading_2, bold = true },
    markdownH3 = { fg = c.heading_3, bold = true },
    markdownH4 = { fg = c.heading_4, bold = true },
    markdownH5 = { fg = c.heading_5, bold = true },
    markdownH6 = { fg = c.heading_6, bold = true },
    markdownCode = { fg = c.string },
    markdownCodeBlock = { fg = c.string },
    markdownLinkText = { fg = c.blue, underline = true },
    markdownUrl = { fg = c.accent, underline = true },
  })
end

return M
