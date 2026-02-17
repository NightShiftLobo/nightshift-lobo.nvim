local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)
  util.apply({
    CmpDocumentation = { fg = c.fg, bg = c.surface },
    CmpDocumentationBorder = { fg = c.border, bg = c.surface },

    CmpItemAbbr = { fg = c.fg_dim },
    CmpItemAbbrDeprecated = { fg = c.fg_soft, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.accent, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.accent },

    CmpItemMenu = { fg = c.fg_soft },

    CmpItemKindText = { fg = c.fg_dim },
    CmpItemKindVariable = { fg = c.fg_dim },
    CmpItemKindProperty = { fg = c.teal },
    CmpItemKindField = { fg = c.teal },
    CmpItemKindFunction = { fg = c.accent },
    CmpItemKindMethod = { fg = c.accent },
    CmpItemKindConstructor = { fg = c.magenta },
    CmpItemKindClass = { fg = c.magenta },
    CmpItemKindInterface = { fg = c.magenta },
    CmpItemKindModule = { fg = c.magenta },
    CmpItemKindKeyword = { fg = c.yellow },
    CmpItemKindSnippet = { fg = c.green },
    CmpItemKindFile = { fg = c.cyan },
    CmpItemKindFolder = { fg = c.cyan },
    CmpItemKindConstant = { fg = c.constant },
    CmpItemKindEnum = { fg = c.constant },
    CmpItemKindEnumMember = { fg = c.constant },
  })
end

return M
