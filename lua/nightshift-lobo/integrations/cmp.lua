local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)
  util.apply({
    CmpDocumentation = { fg = c.text, bg = c.mantle },
    CmpDocumentationBorder = { fg = c.overlay0, bg = c.mantle },

    CmpItemAbbr = { fg = c.overlay2 },
    CmpItemAbbrDeprecated = { fg = c.overlay0, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.text, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.text, bold = true },

    CmpItemKind = { fg = c.blue },
    CmpItemMenu = { fg = c.text },

    CmpItemKindText = { fg = c.teal },
    CmpItemKindVariable = { fg = c.flamingo },
    CmpItemKindValue = { fg = c.peach },
    CmpItemKindProperty = { fg = c.property },
    CmpItemKindField = { fg = c.property },
    CmpItemKindEnumMember = { fg = c.red },

    CmpItemKindFunction = { fg = c.func },
    CmpItemKindMethod = { fg = c.func },

    CmpItemKindConstructor = { fg = c.type },
    CmpItemKindClass = { fg = c.type },
    CmpItemKindInterface = { fg = c.type },
    CmpItemKindStruct = { fg = c.blue },
    CmpItemKindTypeParameter = { fg = c.blue },
    CmpItemKindModule = { fg = c.blue },
    CmpItemKindUnit = { fg = c.green },

    CmpItemKindKeyword = { fg = c.red },
    CmpItemKindOperator = { fg = c.blue },

    CmpItemKindConstant = { fg = c.peach },
    CmpItemKindEnum = { fg = c.green },

    CmpItemKindSnippet = { fg = c.mauve },
    CmpItemKindFile = { fg = c.accent },
    CmpItemKindFolder = { fg = c.accent },
    CmpItemKindReference = { fg = c.red },
    CmpItemKindEvent = { fg = c.blue },
    CmpItemKindColor = { fg = c.red },
    CmpItemKindCopilot = { fg = c.teal },
  })
end

return M
