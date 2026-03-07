local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local normal_bg = cfg.transparent and c.none or c.bg
  local normal_nc_bg = cfg.dim_inactive and c.bg_alt or normal_bg
  local status_bg = cfg.transparent and c.none or c.bg_alt

  util.apply({
    Normal = { fg = c.fg, bg = normal_bg },
    NormalNC = { fg = c.fg_dim, bg = normal_nc_bg },
    EndOfBuffer = { fg = c.bg_alt, bg = normal_bg },
    ColorColumn = { bg = c.bg_alt },
    Conceal = { fg = c.fg_soft },

    Cursor = { fg = c.bg, bg = c.cursor },
    lCursor = { fg = c.bg, bg = c.cursor },
    CursorIM = { fg = c.bg, bg = c.cursor },
    CursorColumn = { bg = c.bg_alt },
    CursorLine = { bg = c.cursorline },

    LineNr = { fg = c.border, bg = normal_bg },
    CursorLineNr = { fg = c.accent, bg = c.cursorline, bold = true },
    SignColumn = { fg = c.border, bg = normal_bg },
    FoldColumn = { fg = c.border, bg = normal_bg },
    Folded = { fg = c.blue_soft, bg = c.bg_alt },

    Visual = { bg = c.selection, bold = true },
    VisualNOS = { bg = c.selection, bold = true },
    Search = { fg = c.bg, bg = c.yellow },
    CurSearch = { fg = c.bg, bg = c.accent },
    IncSearch = { fg = c.bg, bg = c.accent },
    MatchParen = { fg = c.peach, bg = c.surface_alt, bold = true },

    StatusLine = { fg = c.text, bg = status_bg },
    StatusLineNC = { fg = c.border, bg = status_bg },
    WinBar = { fg = c.blue_soft, bg = normal_bg },
    WinBarNC = { fg = c.fg_soft, bg = normal_nc_bg },

    VertSplit = { fg = cfg.transparent and c.border or c.bg_alt, bg = normal_bg },
    WinSeparator = { fg = cfg.transparent and c.border or c.bg_alt, bg = normal_bg },

    NonText = { fg = c.border },
    Whitespace = { fg = c.border },
    SpecialKey = { fg = c.border },

    CursorLineFold = { fg = c.fg_soft, bg = c.cursorline },
    CursorLineSign = { fg = c.fg_soft, bg = c.cursorline },

    NormalSB = { fg = c.text, bg = status_bg },
    SignColumnSB = { fg = c.border, bg = status_bg },

    QuickFixLine = { bg = c.surface, bold = true },
    Directory = { fg = c.accent },
    Title = { fg = c.blue, bold = true },

    ErrorMsg = { fg = c.red, bg = normal_bg, bold = true },
    WarningMsg = { fg = c.yellow, bg = normal_bg },
    MoreMsg = { fg = c.blue, bg = normal_bg },
    ModeMsg = { fg = c.text, bg = normal_bg, bold = true },
    Question = { fg = c.teal, bg = normal_bg },

    TabLine = { fg = c.fg_soft, bg = status_bg },
    TabLineFill = { bg = status_bg, fg = c.fg_soft },
    TabLineSel = { fg = c.text, bg = normal_bg, bold = true },

    TermCursor = { fg = c.bg, bg = c.cursor },
    TermCursorNC = { fg = c.bg, bg = c.fg_dim },
  })
end

return M
