-- lua/nightshift-lobo/core/ui.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("Pmenu", { bg = colors.surface, fg = colors.fg })
	util.highlight("PmenuSel", { bg = colors.surface_high, fg = colors.fg })
	util.highlight("NormalFloat", { bg = colors.surface })
	util.highlight("FloatBorder", { fg = colors.border })
	util.highlight("WinSeparator", { fg = colors.border })
end

return M
