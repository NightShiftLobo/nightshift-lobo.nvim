local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local normal_bg = cfg.transparent and "NONE" or c.bg
  local normal_nc_bg = cfg.dim_inactive and c.bg_alt or normal_bg

  util.apply({
    Normal = { fg = c.fg, bg = normal_bg },
    NormalNC = { fg = c.fg_dim, bg = normal_nc_bg },
    EndOfBuffer = { fg = c.bg_alt, bg = normal_bg },
    ColorColumn = { bg = c.bg_alt },
    Conceal = { fg = c.fg_soft },

    Cursor = { fg = c.bg, bg = c.cursor },
    lCursor = { fg = c.bg, bg = c.cursor },
    CursorIM = { fg = c.bg, bg = c.cursor },
    CursorLine = { bg = c.bg_alt },
    CursorColumn = { bg = c.bg_alt },

    LineNr = { fg = c.fg_soft, bg = normal_bg },
    CursorLineNr = { fg = c.accent, bg = c.bg_alt, bold = true },
    SignColumn = { fg = c.fg_soft, bg = normal_bg },
    FoldColumn = { fg = c.fg_soft, bg = normal_bg },
    Folded = { fg = c.fg_dim, bg = c.bg_alt },

    Visual = { bg = c.selection },
    VisualNOS = { bg = c.selection },
    Search = { fg = c.bg, bg = c.yellow },
    CurSearch = { fg = c.bg, bg = c.accent },
    IncSearch = { fg = c.bg, bg = c.accent },
    MatchParen = { fg = c.accent, bg = c.surface_alt, bold = true },

    StatusLine = { fg = c.fg, bg = c.surface },
    StatusLineNC = { fg = c.fg_soft, bg = c.bg_alt },
    WinBar = { fg = c.fg_dim, bg = normal_bg },
    WinBarNC = { fg = c.fg_soft, bg = normal_nc_bg },

    VertSplit = { fg = c.border, bg = normal_bg },
    WinSeparator = { fg = c.border, bg = normal_bg },

    NonText = { fg = c.surface_alt },
    Whitespace = { fg = c.surface_alt },
    SpecialKey = { fg = c.surface_alt },

    QuickFixLine = { bg = c.selection },
    Directory = { fg = c.accent },
    Title = { fg = c.fg, bold = true },

    ErrorMsg = { fg = c.red, bg = normal_bg, bold = true },
    WarningMsg = { fg = c.yellow, bg = normal_bg },
    MoreMsg = { fg = c.green, bg = normal_bg },
    ModeMsg = { fg = c.fg_dim, bg = normal_bg },
    Question = { fg = c.teal, bg = normal_bg },
  })
end

return M
