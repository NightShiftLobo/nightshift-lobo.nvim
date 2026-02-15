-- lua/nightshift-lobo/core/lsp.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("DiagnosticError", { fg = colors.red })
	util.highlight("DiagnosticWarn", { fg = colors.yellow })
	util.highlight("DiagnosticInfo", { fg = colors.blue })
	util.highlight("DiagnosticHint", { fg = colors.hint })

	util.highlight("DiagnosticUnderlineError", {
		undercurl = true,
		sp = colors.red,
	})

	util.highlight("DiagnosticUnderlineWarn", {
		undercurl = true,
		sp = colors.yellow,
	})
end

return M
