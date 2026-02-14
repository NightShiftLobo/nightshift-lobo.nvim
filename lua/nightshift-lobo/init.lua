local M = {}
local colors = require("nightshift-lobo.palette").colors

function M.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "nightshift-lobo"

	local hi = vim.api.nvim_set_hl

	-- Basic editor
	hi(0, "Normal", { fg = colors.fg, bg = colors.bg })
	hi(0, "NormalFloat", { fg = colors.fg, bg = colors.surface })
	hi(0, "CursorLine", { bg = colors.surface_alt })
	hi(0, "CursorColumn", { bg = colors.surface_alt })
	hi(0, "Visual", { bg = colors.selection })
	hi(0, "LineNr", { fg = colors.fg_dim })
	hi(0, "CursorLineNr", { fg = colors.fg_accent })
	hi(0, "Pmenu", { bg = colors.surface, fg = colors.fg })
	hi(0, "PmenuSel", { bg = colors.surface_high, fg = colors.fg })

	-- Comments and hints
	hi(0, "Comment", { fg = colors.comment, italic = true })
	hi(0, "Todo", { fg = colors.yellow, bold = true })
	hi(0, "Hint", { fg = colors.hint })

	-- Syntax highlighting
	hi(0, "String", { fg = colors.string })
	hi(0, "Constant", { fg = colors.constant })
	hi(0, "Identifier", { fg = colors.statement })
	hi(0, "Function", { fg = colors.function_name })
	hi(0, "Keyword", { fg = colors.keyword, bold = true })
	hi(0, "Type", { fg = colors.type })
	hi(0, "Statement", { fg = colors.statement })

	-- UI
	hi(0, "VertSplit", { fg = colors.border })
	hi(0, "StatusLine", { fg = colors.fg, bg = colors.surface_alt })
	hi(0, "StatusLineNC", { fg = colors.fg_dim, bg = colors.surface_alt })
	hi(0, "Title", { fg = colors.accent })

	-- LSP diagnostics
	hi(0, "DiagnosticError", { fg = colors.error })
	hi(0, "DiagnosticWarn", { fg = colors.warning })
	hi(0, "DiagnosticInfo", { fg = colors.info })
	hi(0, "DiagnosticHint", { fg = colors.hint })

	-- Telescope
	hi(0, "TelescopeNormal", { bg = colors.surface, fg = colors.fg })
	hi(0, "TelescopeBorder", { fg = colors.border, bg = colors.surface })
	hi(0, "TelescopeSelection", { bg = colors.surface_high, fg = colors.fg })
	hi(0, "TelescopePromptNormal", { bg = colors.surface_alt })
	hi(0, "TelescopePromptBorder", { fg = colors.border, bg = colors.surface_alt })
	hi(0, "TelescopePromptPrefix", { fg = colors.accent, bg = colors.surface_alt })
	hi(0, "TelescopeResultsNormal", { bg = colors.surface })
	hi(0, "TelescopeResultsBorder", { fg = colors.border, bg = colors.surface })
	hi(0, "TelescopePreviewNormal", { bg = colors.surface })
	hi(0, "TelescopePreviewBorder", { fg = colors.border, bg = colors.surface })

	-- Completion (nvim-cmp)
	hi(0, "CmpItemAbbr", { fg = colors.fg })
	hi(0, "CmpItemAbbrMatch", { fg = colors.accent, bold = true })
	hi(0, "CmpItemKindFunction", { fg = colors.function_name })
	hi(0, "CmpItemKindVariable", { fg = colors.statement })
	hi(0, "CmpItemKindKeyword", { fg = colors.keyword })
end

return M
