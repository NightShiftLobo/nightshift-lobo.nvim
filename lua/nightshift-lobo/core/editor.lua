-- lua/nightshift-lobo/core/editor.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config").options

local M = {}

function M.load()
	util.highlight("Normal", {
		fg = colors.fg,
		bg = config.transparent and "NONE" or colors.bg,
	})

	util.highlight("CursorLine", { bg = colors.surface_high })
	util.highlight("Visual", { bg = colors.selection })
	util.highlight("LineNr", { fg = colors.fg_soft })
	util.highlight("CursorLineNr", { fg = colors.accent, bold = true })
	util.highlight("VertSplit", { fg = colors.border })
	util.highlight("FloatBorder", { fg = colors.border })
end

return M
