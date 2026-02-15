-- lua/nightshift-lobo/core/treesitter.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("@comment", { link = "Comment" })
	util.highlight("@string", { link = "String" })
	util.highlight("@function", { fg = colors.function_name, bold = true })
	util.highlight("@method", { fg = colors.blue })
	util.highlight("@type", { fg = colors.type })
	util.highlight("@keyword", { fg = colors.keyword })
	util.highlight("@variable", { fg = colors.fg })
	util.highlight("@constant", { fg = colors.constant })
end

return M
