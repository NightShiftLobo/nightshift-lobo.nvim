local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local transparent = cfg.transparent

  util.apply({
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },
    GitSignsTopdelete = { fg = c.red },
    GitSignsChangedelete = { fg = c.yellow },

    GitSignsCurrentLineBlame = { fg = c.border, italic = true },

    GitSignsAddPreview = transparent and { fg = c.green, bg = c.none } or { link = "DiffAdd" },
    GitSignsDeletePreview = transparent and { fg = c.red, bg = c.none } or { link = "DiffDelete" },

    GitSignsAddInline = transparent and { fg = c.bg, bg = c.green, bold = true } or { bg = c.diff_add },
    GitSignsChangeInline = transparent and { fg = c.bg, bg = c.yellow, bold = true } or { bg = c.diff_change },
    GitSignsDeleteInline = transparent and { fg = c.bg, bg = c.red, bold = true } or { bg = c.diff_delete },
    GitSignsDeleteVirtLn = { fg = c.red, bg = transparent and c.none or c.diff_delete },

    GitSignsAddLn = { bg = transparent and c.none or c.diff_add },
    GitSignsChangeLn = { bg = transparent and c.none or c.diff_change },
    GitSignsDeleteLn = { bg = transparent and c.none or c.diff_delete },

    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.yellow },
    GitSignsDeleteNr = { fg = c.red },
  })
end

return M
