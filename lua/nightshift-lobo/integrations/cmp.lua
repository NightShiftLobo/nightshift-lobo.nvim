-- lua/nightshift-lobo/integrations/cmp.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("CmpItemAbbr", { fg = colors.fg })
	util.highlight("CmpItemAbbrMatch", { fg = colors.blue, bold = true })
	util.highlight("CmpItemKindFunction", { fg = colors.blue })
	util.highlight("CmpItemKindKeyword", { fg = colors.yellow })
end

return M
