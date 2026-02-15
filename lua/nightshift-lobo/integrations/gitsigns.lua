-- lua/nightshift-lobo/integrations/gitsigns.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("GitSignsAdd", { fg = colors.green })
	util.highlight("GitSignsChange", { fg = colors.yellow })
	util.highlight("GitSignsDelete", { fg = colors.red })
end

return M
