local c = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
  util.apply({
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },
    GitSignsCurrentLineBlame = { fg = c.fg_soft, italic = true },
    GitSignsAddLn = { bg = c.bg_alt },
    GitSignsChangeLn = { bg = c.bg_alt },
    GitSignsDeleteLn = { bg = c.bg_alt },
    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.yellow },
    GitSignsDeleteNr = { fg = c.red },
  })
end

return M
