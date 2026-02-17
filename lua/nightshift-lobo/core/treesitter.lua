local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local styles = cfg.styles
  util.apply({
    ["@comment"] = vim.tbl_extend("force", { fg = c.comment }, styles.comments),
    ["@comment.documentation"] = { fg = c.fg_soft, italic = true },

    ["@constant"] = { fg = c.constant },
    ["@constant.builtin"] = { fg = c.constant },
    ["@constant.macro"] = { fg = c.magenta },

    ["@string"] = vim.tbl_extend("force", { fg = c.string }, styles.strings),
    ["@string.escape"] = { fg = c.teal },
    ["@string.regex"] = { fg = c.cyan },
    ["@string.special"] = { fg = c.teal },

    ["@character"] = { fg = c.string },
    ["@character.special"] = { fg = c.teal },

    ["@number"] = { fg = c.constant },
    ["@boolean"] = { fg = c.magenta },
    ["@float"] = { fg = c.constant },

    ["@annotation"] = { fg = c.magenta },
    ["@attribute"] = { fg = c.magenta },

    ["@module"] = { fg = c.type },
    ["@module.builtin"] = { fg = c.type },
    ["@label"] = { fg = c.accent },

    ["@function"] = vim.tbl_extend("force", { fg = c.func }, styles.functions),
    ["@function.builtin"] = { fg = c.accent },
    ["@function.call"] = { fg = c.func },
    ["@function.macro"] = { fg = c.magenta },

    ["@method"] = { fg = c.func },
    ["@method.call"] = { fg = c.func },
    ["@constructor"] = { fg = c.type },

    ["@parameter"] = { fg = c.fg_dim },
    ["@parameter.reference"] = { fg = c.fg_dim },

    ["@keyword"] = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    ["@keyword.function"] = { fg = c.accent },
    ["@keyword.operator"] = { fg = c.yellow },
    ["@keyword.return"] = { fg = c.keyword },
    ["@keyword.import"] = { fg = c.keyword },
    ["@keyword.conditional"] = { fg = c.keyword },
    ["@keyword.repeat"] = { fg = c.keyword },
    ["@keyword.exception"] = { fg = c.magenta },

    ["@operator"] = { fg = c.cyan },
    ["@punctuation.delimiter"] = { fg = c.fg_soft },
    ["@punctuation.bracket"] = { fg = c.fg_soft },
    ["@punctuation.special"] = { fg = c.fg_soft },

    ["@variable"] = vim.tbl_extend("force", { fg = c.fg }, styles.variables),
    ["@variable.builtin"] = { fg = c.teal },
    ["@variable.parameter"] = { fg = c.fg_dim },
    ["@variable.member"] = { fg = c.property },

    ["@property"] = { fg = c.property },
    ["@field"] = { fg = c.property },

    ["@type"] = { fg = c.type },
    ["@type.builtin"] = { fg = c.type },
    ["@type.definition"] = { fg = c.type },

    ["@storageclass"] = { fg = c.magenta },
    ["@namespace"] = { fg = c.type },

    ["@tag"] = { fg = c.accent },
    ["@tag.attribute"] = { fg = c.property },
    ["@tag.delimiter"] = { fg = c.fg_soft },

    -- Markdown
    ["@markup.heading"] = { fg = c.heading_1, bold = true },
    ["@markup.heading.1"] = { fg = c.heading_1, bold = true },
    ["@markup.heading.2"] = { fg = c.heading_2, bold = true },
    ["@markup.heading.3"] = { fg = c.heading_3, bold = true },
    ["@markup.heading.4"] = { fg = c.heading_4, bold = true },
    ["@markup.heading.5"] = { fg = c.heading_5, bold = true },
    ["@markup.heading.6"] = { fg = c.heading_6, bold = true },
    ["@markup.italic"] = { fg = c.fg, italic = true },
    ["@markup.strong"] = { fg = c.fg, bold = true },
    ["@markup.strikethrough"] = { fg = c.fg_soft, strikethrough = true },
    ["@markup.quote"] = { fg = c.fg_dim, italic = true },
    ["@markup.math"] = { fg = c.constant },
    ["@markup.link"] = { fg = c.cyan, underline = true },
    ["@markup.link.label"] = { fg = c.cyan },
    ["@markup.link.url"] = { fg = c.teal, underline = true },
    ["@markup.raw"] = { fg = c.string },
    ["@markup.raw.block"] = { fg = c.string, bg = c.bg_alt },
    ["@markup.list"] = { fg = c.heading_4 },

    -- YAML
    ["@property.yaml"] = { fg = c.accent },
    ["@string.yaml"] = { fg = c.string },
    ["@number.yaml"] = { fg = c.constant },
    ["@boolean.yaml"] = { fg = c.constant },
    ["@punctuation.special.yaml"] = { fg = c.magenta },

    -- TypeScript / TSX
    ["@type.typescript"] = { fg = c.type },
    ["@type.builtin.typescript"] = { fg = c.type },
    ["@keyword.typescript"] = { fg = c.yellow },
    ["@keyword.operator.typescript"] = { fg = c.cyan },
    ["@constructor.typescript"] = { fg = c.type },
    ["@property.typescript"] = { fg = c.property },
    ["@variable.member.typescript"] = { fg = c.property },
    ["@function.typescript"] = { fg = c.func },
    ["@function.call.typescript"] = { fg = c.func },
    ["@type.tsx"] = { fg = c.type },
    ["@tag.tsx"] = { fg = c.accent },
    ["@tag.attribute.tsx"] = { fg = c.property },
  })
end

return M
