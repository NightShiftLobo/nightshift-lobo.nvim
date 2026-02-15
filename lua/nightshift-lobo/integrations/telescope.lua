-- lua/nightshift-lobo/integrations/telescope.lua
local colors = require("nightshift-lobo.palette").colors
local util = require("nightshift-lobo.util")

local M = {}

function M.load()
	util.highlight("TelescopeNormal", { bg = colors.surface })
	util.highlight("TelescopeBorder", { fg = colors.border })
	util.highlight("TelescopeSelection", { bg = colors.surface_high })
	util.highlight("TelescopeMatching", { fg = colors.blue })
end

return M
