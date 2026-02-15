-- lua/nightshift-lobo/init.lua
local M = {}

function M.setup(opts)
	opts = opts or {}
	require("nightshift-lobo.config").set(opts)
end

function M.load()
	vim.cmd("highlight clear")
	vim.cmd("set termguicolors")
	vim.g.colors_name = "nightshift-lobo"

	require("nightshift-lobo.core.editor").load()
	require("nightshift-lobo.core.ui").load()
	require("nightshift-lobo.core.syntax").load()
	require("nightshift-lobo.core.treesitter").load()
	require("nightshift-lobo.core.lsp").load()

	require("nightshift-lobo.integrations.telescope").load()
	require("nightshift-lobo.integrations.cmp").load()
	require("nightshift-lobo.integrations.gitsigns").load()
end

return M
