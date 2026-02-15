local c = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")
local styles = require("nightshift-lobo.config").options.styles

local M = {}

function M.load()
  util.apply({
    Comment = vim.tbl_extend("force", { fg = c.comment }, styles.comments),

    Constant = { fg = c.constant },
    String = vim.tbl_extend("force", { fg = c.string }, styles.strings),
    Character = { fg = c.string },
    Number = { fg = c.constant },
    Boolean = { fg = c.magenta },
    Float = { fg = c.constant },

    Identifier = vim.tbl_extend("force", { fg = c.fg }, styles.variables),
    Function = vim.tbl_extend("force", { fg = c.func }, styles.functions),

    Statement = { fg = c.keyword },
    Conditional = { fg = c.keyword },
    Repeat = { fg = c.keyword },
    Label = { fg = c.accent },
    Operator = { fg = c.fg_dim },
    Keyword = vim.tbl_extend("force", { fg = c.keyword }, styles.keywords),
    Exception = { fg = c.magenta },

    PreProc = { fg = c.accent },
    Include = { fg = c.cyan },
    Define = { fg = c.magenta },
    Macro = { fg = c.magenta },
    PreCondit = { fg = c.yellow },

    Type = { fg = c.type },
    StorageClass = { fg = c.magenta },
    Structure = { fg = c.type },
    Typedef = { fg = c.type },

    Special = { fg = c.teal },
    SpecialChar = { fg = c.teal },
    Tag = { fg = c.accent },
    Delimiter = { fg = c.cyan },
    SpecialComment = { fg = c.fg_dim, italic = true },
    Debug = { fg = c.red },

    Underlined = { fg = c.cyan, underline = true },
    Ignore = { fg = c.fg_soft },
    Error = { fg = c.red, bold = true },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    -- YAML legacy syntax groups.
    yamlKey = { fg = c.accent },
    yamlAnchor = { fg = c.magenta },
    yamlAlias = { fg = c.magenta },
    yamlDocumentStart = { fg = c.magenta },
    yamlBlockMappingKey = { fg = c.accent },
  })
end

return M
