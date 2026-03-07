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
  local groups = {
    ["@variable"] = style({ fg = c.text }, styles.variables),
    ["@variable.builtin"] = style({ fg = c.builtin }, styles.properties),
    ["@variable.parameter"] = style({ fg = c.constant }, styles.variables),
    ["@variable.member"] = style({ fg = c.property }, styles.properties),

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = style({ fg = c.constant }, styles.booleans),
    ["@constant.macro"] = { link = "Macro" },

    ["@module"] = style({ fg = c.type }, type_style),
    ["@module.builtin"] = style({ fg = c.type }, type_style),
    ["@label"] = { link = "Label" },

    ["@string"] = { link = "String" },
    ["@string.documentation"] = style({ fg = c.teal }, styles.strings),
    ["@string.regexp"] = { fg = c.pink },
    ["@string.escape"] = { fg = c.mauve },
    ["@string.special"] = { link = "Special" },
    ["@string.special.path"] = { link = "Special" },
    ["@string.special.symbol"] = { fg = c.peach },
    ["@string.special.url"] = { fg = c.blue, italic = true, underline = true },
    ["@punctuation.delimiter.regex"] = { link = "@string.regexp" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = style({ fg = c.type }, type_style),
    ["@type.definition"] = { link = "Type" },

    ["@attribute"] = { link = "Macro" },
    ["@annotation"] = { link = "@attribute" },
    ["@property"] = style({ fg = c.property }, styles.properties),

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = c.builtin },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { fg = c.decorator, italic = true },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },
    ["@constructor"] = style({ fg = c.type }, type_style),
    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.modifier"] = { link = "Keyword" },
    ["@keyword.type"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = style({ fg = c.keyword }, styles.keywords),
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.debug"] = { link = "Exception" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Operator" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.export"] = { link = "Keyword" },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { fg = c.overlay2 },
    ["@punctuation.special"] = { fg = c.sky },

    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },
    ["@comment.error"] = { fg = c.bg, bg = c.red },
    ["@comment.warning"] = { fg = c.bg, bg = c.yellow },
    ["@comment.hint"] = { fg = c.bg, bg = c.blue },
    ["@comment.todo"] = { fg = c.bg, bg = c.mauve },
    ["@comment.note"] = { fg = c.bg, bg = c.peach },

    ["@markup"] = { fg = c.text },
    ["@markup.strong"] = { fg = c.red, bold = true },
    ["@markup.italic"] = { fg = c.red, italic = true },
    ["@markup.strikethrough"] = { fg = c.overlay1, strikethrough = true },
    ["@markup.underline"] = { link = "Underlined" },
    ["@markup.heading"] = { fg = c.blue, bold = true },
    ["@markup.heading.markdown"] = { bold = true },
    ["@markup.heading.1"] = { fg = c.heading_1, bold = true },
    ["@markup.heading.2"] = { fg = c.heading_2, bold = true },
    ["@markup.heading.3"] = { fg = c.heading_3, bold = true },
    ["@markup.heading.4"] = { fg = c.heading_4, bold = true },
    ["@markup.heading.5"] = { fg = c.heading_5, bold = true },
    ["@markup.heading.6"] = { fg = c.heading_6, bold = true },
    ["@markup.math"] = { fg = c.blue },
    ["@markup.quote"] = { fg = c.mauve, italic = true },
    ["@markup.environment"] = { fg = c.mauve },
    ["@markup.environment.name"] = { fg = c.blue },
    ["@markup.link"] = { fg = c.lavender },
    ["@markup.link.label"] = { fg = c.lavender },
    ["@markup.link.url"] = { fg = c.blue, italic = true, underline = true },
    ["@markup.link.uri"] = { fg = c.blue, italic = true, underline = true },
    ["@markup.raw"] = { fg = c.string },
    ["@markup.raw.block"] = { fg = c.string, bg = c.mantle },
    ["@markup.list"] = { fg = c.teal },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.overlay1 },

    ["@diff.plus"] = { link = "diffAdded" },
    ["@diff.minus"] = { link = "diffRemoved" },
    ["@diff.delta"] = { link = "diffChanged" },

    ["@tag"] = { fg = c.accent },
    ["@tag.builtin"] = { fg = c.accent },
    ["@tag.attribute"] = style({ fg = c.property }, styles.properties),
    ["@tag.delimiter"] = { fg = c.teal },

    ["@error"] = { link = "Error" },

    ["@function.builtin.bash"] = { fg = c.builtin, italic = true },
    ["@variable.parameter.bash"] = { fg = c.green },

    ["@markup.heading.1.markdown"] = { link = "rainbow1" },
    ["@markup.heading.2.markdown"] = { link = "rainbow2" },
    ["@markup.heading.3.markdown"] = { link = "rainbow3" },
    ["@markup.heading.4.markdown"] = { link = "rainbow4" },
    ["@markup.heading.5.markdown"] = { link = "rainbow5" },
    ["@markup.heading.6.markdown"] = { link = "rainbow6" },

    ["@markup.heading.html"] = { link = "@markup" },
    ["@markup.heading.1.html"] = { link = "@markup" },
    ["@markup.heading.2.html"] = { link = "@markup" },
    ["@markup.heading.3.html"] = { link = "@markup" },
    ["@markup.heading.4.html"] = { link = "@markup" },
    ["@markup.heading.5.html"] = { link = "@markup" },
    ["@markup.heading.6.html"] = { link = "@markup" },

    ["@constant.java"] = { fg = c.teal },

    ["@property.css"] = { fg = c.blue },
    ["@property.scss"] = { fg = c.blue },
    ["@property.id.css"] = { fg = c.yellow },
    ["@property.class.css"] = { fg = c.yellow },
    ["@type.css"] = style({ fg = c.lavender }, type_style),
    ["@type.tag.css"] = { fg = c.blue },
    ["@string.plain.css"] = { fg = c.text },
    ["@number.css"] = style({ fg = c.peach }, styles.numbers),
    ["@keyword.directive.css"] = { link = "Keyword" },

    ["@string.special.url.html"] = { fg = c.green },
    ["@markup.link.label.html"] = { fg = c.text },
    ["@character.special.html"] = { fg = c.red },

    ["@constructor.lua"] = { link = "@punctuation.bracket" },
    ["@constructor.python"] = { fg = c.sky },
    ["@label.yaml"] = { fg = c.yellow },
    ["@string.special.symbol.ruby"] = { fg = c.red },
    ["@function.method.php"] = { link = "Function" },
    ["@function.method.call.php"] = { link = "Function" },
    ["@keyword.import.c"] = { fg = c.yellow },
    ["@keyword.import.cpp"] = { fg = c.yellow },
    ["@attribute.c_sharp"] = { fg = c.yellow },
    ["@comment.warning.gitcommit"] = { fg = c.yellow },
    ["@string.special.path.gitignore"] = { fg = c.text },

    ["@property.yaml"] = { fg = c.accent },
    ["@string.yaml"] = { fg = c.string },
    ["@number.yaml"] = { link = "Number" },
    ["@boolean.yaml"] = { link = "Boolean" },
    ["@punctuation.special.yaml"] = { fg = c.keyword },

    ["@property.json"] = { fg = c.accent },
    ["@string.json"] = { fg = c.string },
    ["@number.json"] = { link = "Number" },
    ["@boolean.json"] = { link = "Boolean" },

    ["@property.toml"] = { fg = c.accent },
    ["@string.toml"] = { fg = c.string },
    ["@number.toml"] = { link = "Number" },
    ["@boolean.toml"] = { link = "Boolean" },

    ["@type.typescript"] = { link = "Type" },
    ["@type.builtin.typescript"] = { link = "Type" },
    ["@keyword.typescript"] = { link = "Keyword" },
    ["@keyword.operator.typescript"] = { link = "Operator" },
    ["@constructor.typescript"] = { link = "@constructor" },
    ["@property.typescript"] = style({ fg = c.property }, styles.properties),
    ["@variable.member.typescript"] = style({ fg = c.property }, styles.properties),
    ["@function.typescript"] = { link = "Function" },
    ["@function.call.typescript"] = { link = "Function" },
    ["@type.tsx"] = { link = "Type" },
    ["@tag.tsx"] = { fg = c.accent },
    ["@tag.attribute.tsx"] = style({ fg = c.property }, styles.properties),

    ["@variable.parameter.function.language.special.self.python"] = { fg = c.builtin, italic = true },
    ["@variable.language.special.self.python"] = { fg = c.builtin, italic = true },
    ["@function.decorator.python"] = { fg = c.decorator, italic = true },
    ["@function.builtin.python"] = { fg = c.builtin },
    ["@type.python"] = { link = "Type" },
    ["@keyword.python"] = { link = "Keyword" },

    ["@attribute.rust"] = { fg = c.decorator, italic = true },
    ["@type.rust"] = { link = "Type" },
    ["@module.rust"] = style({ fg = c.type }, type_style),
    ["@lifetime.rust"] = { fg = c.keyword },

    gitcommitSummary = { fg = c.peach, italic = true },
    zshKSHFunction = { link = "Function" },
  }

  groups["@parameter"] = groups["@variable.parameter"]
  groups["@field"] = groups["@variable.member"]
  groups["@namespace"] = groups["@module"]
  groups["@float"] = groups["@number.float"]
  groups["@symbol"] = groups["@string.special.symbol"]
  groups["@string.regex"] = groups["@string.regexp"]

  groups["@text"] = groups["@markup"]
  groups["@text.strong"] = groups["@markup.strong"]
  groups["@text.emphasis"] = groups["@markup.italic"]
  groups["@text.underline"] = groups["@markup.underline"]
  groups["@text.strike"] = groups["@markup.strikethrough"]
  groups["@text.uri"] = groups["@markup.link.url"]
  groups["@text.math"] = groups["@markup.math"]
  groups["@text.environment"] = groups["@markup.environment"]
  groups["@text.environment.name"] = groups["@markup.environment.name"]
  groups["@text.title"] = groups["@markup.heading"]
  groups["@text.literal"] = groups["@markup.raw"]
  groups["@text.reference"] = groups["@markup.link"]
  groups["@text.todo.checked"] = groups["@markup.list.checked"]
  groups["@text.todo.unchecked"] = groups["@markup.list.unchecked"]
  groups["@text.todo"] = groups["@comment.todo"]
  groups["@text.warning"] = groups["@comment.warning"]
  groups["@text.note"] = groups["@comment.note"]
  groups["@text.danger"] = groups["@comment.error"]
  groups["@method"] = groups["@function.method"]
  groups["@method.call"] = groups["@function.method.call"]
  groups["@text.diff.add"] = groups["@diff.plus"]
  groups["@text.diff.delete"] = groups["@diff.minus"]

  util.apply(groups)
end

return M
