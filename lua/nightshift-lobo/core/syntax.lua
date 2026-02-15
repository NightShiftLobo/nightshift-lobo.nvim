-- lua/nightshift-lobo/core/syntax.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("Comment", { fg = colors.comment, italic = true })
	util.highlight("String", { fg = colors.string })
	util.highlight("Constant", { fg = colors.constant })
	util.highlight("Identifier", { fg = colors.fg })
	util.highlight("Function", { fg = colors.function_name, bold = true })
	util.highlight("Keyword", { fg = colors.keyword })
	util.highlight("Type", { fg = colors.type })
	util.highlight("Statement", { fg = colors.statement })
	util.highlight("Error", { fg = colors.red, bold = true })
end

return M
