local c = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")
local cfg = require("nightshift-lobo.config").options

local M = {}

function M.load()
  local normal_bg = cfg.transparent and "NONE" or c.bg

  util.apply({
    NormalFloat = { fg = c.fg, bg = c.surface },
    FloatBorder = { fg = c.border, bg = c.surface },
    FloatTitle = { fg = c.accent, bg = c.surface, bold = true },

    Pmenu = { fg = c.fg, bg = c.surface },
    PmenuSel = { fg = c.fg, bg = c.surface_alt },
    PmenuSbar = { bg = c.bg_alt },
    PmenuThumb = { bg = c.selection },

    WildMenu = { fg = c.fg, bg = c.surface_alt },
    TabLine = { fg = c.fg_soft, bg = c.bg_alt },
    TabLineSel = { fg = c.fg, bg = c.surface, bold = true },
    TabLineFill = { fg = c.fg_soft, bg = c.bg_alt },

    CursorLineFold = { fg = c.fg_dim, bg = c.bg_alt },
    CursorLineSign = { fg = c.fg_dim, bg = c.bg_alt },

    NormalSB = { fg = c.fg_dim, bg = c.surface },
    SignColumnSB = { fg = c.fg_soft, bg = c.surface },

    DiffAdd = { fg = c.green, bg = c.bg_alt },
    DiffChange = { fg = c.yellow, bg = c.bg_alt },
    DiffDelete = { fg = c.red, bg = c.bg_alt },
    DiffText = { fg = c.accent, bg = c.surface_alt },

    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.yellow },
    SpellLocal = { undercurl = true, sp = c.cyan },
    SpellRare = { undercurl = true, sp = c.hint },

    MsgArea = { fg = c.fg_dim, bg = normal_bg },
    MsgSeparator = { fg = c.border, bg = normal_bg },
    Substitute = { fg = c.bg, bg = c.pink },

    -- Markdown in normal syntax mode (not Tree-sitter).
    markdownHeadingDelimiter = { fg = c.accent, bold = true },
    markdownH1 = { fg = c.fg, bold = true },
    markdownH2 = { fg = c.fg, bold = true },
    markdownH3 = { fg = c.fg, bold = true },
    markdownCode = { fg = c.string },
    markdownCodeBlock = { fg = c.string },
    markdownLinkText = { fg = c.cyan, underline = true },
    markdownUrl = { fg = c.teal, underline = true },
  })
end

return M
