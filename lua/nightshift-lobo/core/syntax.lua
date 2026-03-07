local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

local function style(base, extra)
  return vim.tbl_extend("force", base, extra or {})
end

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local styles = cfg.styles
  local type_style = styles.types or { italic = true }

  util.apply({
    Comment = style({ fg = c.comment }, styles.comments),
    SpecialComment = { fg = c.decorator },

    Constant = { fg = c.constant },
    String = style({ fg = c.string }, styles.strings),
    Character = { fg = c.teal },
    Number = style({ fg = c.constant }, styles.numbers),
    Boolean = style({ fg = c.constant }, styles.booleans),
    Float = style({ fg = c.constant }, styles.numbers),

    Identifier = style({ fg = c.text }, styles.variables),
    Function = style({ fg = c.func }, styles.functions),

    Statement = style({ fg = c.keyword }, styles.keywords),
    Conditional = style({ fg = c.keyword }, styles.keywords),
    Repeat = style({ fg = c.keyword }, styles.keywords),
    Label = { fg = c.sky },
    Operator = style({ fg = c.operator }, styles.operators),
    Keyword = style({ fg = c.keyword }, styles.keywords),
    Exception = style({ fg = c.keyword }, styles.keywords),

    PreProc = { fg = c.decorator },
    Include = style({ fg = c.keyword }, styles.keywords),
    Define = { fg = c.decorator },
    Macro = { fg = c.decorator },
    PreCondit = { fg = c.decorator },

    StorageClass = style({ fg = c.type }, type_style),
    Structure = style({ fg = c.type }, type_style),
    Type = style({ fg = c.type }, type_style),
    Typedef = style({ fg = c.type }, type_style),

    Special = { fg = c.pink },
    SpecialChar = { fg = c.pink },
    Tag = { fg = c.accent, bold = true },
    Delimiter = { fg = c.fg_dim },
    Debug = { fg = c.red },

    Underlined = { fg = c.blue, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = c.border },
    Error = { fg = c.red },
    Todo = { fg = c.bg, bg = c.purple, bold = true },

    qfLineNr = { fg = c.yellow },
    qfFileName = { fg = c.blue },

    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.peach },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.border },
    diffIndexLine = { fg = c.teal },

    healthError = { fg = c.red },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.yellow },

    GlyphPalette1 = { fg = c.red },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.teal },
    GlyphPalette7 = { fg = c.text },
    GlyphPalette9 = { fg = c.red },

    rainbow1 = { fg = c.rainbow1 },
    rainbow2 = { fg = c.rainbow2 },
    rainbow3 = { fg = c.rainbow3 },
    rainbow4 = { fg = c.rainbow4 },
    rainbow5 = { fg = c.rainbow5 },
    rainbow6 = { fg = c.rainbow6 },

    markdownHeadingDelimiter = { fg = c.peach, bold = true },
    markdownCode = { fg = c.string },
    markdownCodeBlock = { fg = c.string },
    markdownItalic = { fg = c.red, italic = true },
    markdownItalicDelimiter = { fg = c.fg_soft },
    markdownBold = { fg = c.red, bold = true },
    markdownBoldDelimiter = { fg = c.fg_soft },
    markdownBoldItalic = { fg = c.red, bold = true, italic = true },
    markdownLinkText = { fg = c.blue, underline = true },
    markdownH1 = { fg = c.rainbow1, bold = true },
    markdownH2 = { fg = c.rainbow2, bold = true },
    markdownH3 = { fg = c.rainbow3, bold = true },
    markdownH4 = { fg = c.rainbow4, bold = true },
    markdownH5 = { fg = c.rainbow5, bold = true },
    markdownH6 = { fg = c.rainbow6, bold = true },
    htmlItalic = { fg = c.red, italic = true },
    htmlBold = { fg = c.red, bold = true },
    htmlBoldItalic = { fg = c.red, bold = true, italic = true },

    yamlKey = { fg = c.accent },
    yamlAnchor = { fg = c.keyword },
    yamlAlias = { fg = c.keyword },
    yamlDocumentStart = { fg = c.keyword },
    yamlBlockMappingKey = { fg = c.accent },
  })
end

return M
