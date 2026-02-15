-- lua/nightshift-lobo/config.lua
local M = {}

M.options = {
	transparent = false,
	contrast = "normal", -- "normal" | "high"
}

function M.set(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

return M
