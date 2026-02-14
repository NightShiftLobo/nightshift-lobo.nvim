-- lua/nightshift-lobo/palette.lua
local M = {}

M.colors = {
	-- Backgrounds
	bg = "#1B1D23", -- Eclipse
	bg_alt = "#22252C", -- Shadow
	surface = "#2A2E37", -- Obsidian
	surface_alt = "#303540", -- Graphite
	surface_high = "#383C47", -- Storm

	-- Foregrounds
	fg = "#D7DAE3", -- Moonlight
	fg_dim = "#BFC3D0", -- Mist
	fg_soft = "#A8ACC0", -- Fog
	fg_accent = "#7C93F2", -- Bluebell

	-- Semantic colors
	blue = "#6C82D9", -- Sapphire
	cyan = "#56B6C2", -- Aqua
	teal = "#5FA8B8", -- Teal
	green = "#6CBF84", -- Fern
	yellow = "#CFAE6A", -- Sand
	orange = "#E0C27A", -- Amber
	red = "#D67A7A", -- Rosebud
	magenta = "#C25680", -- Orchid
	pink = "#D05A8E", -- Fuchsia

	-- Comments / hints
	comment = "#5C6370", -- Soft gray
	hint = "#B2A1FF", -- Lavender

	-- Borders / UI
	border = "#303540", -- Graphite
	highlight = "#6ED0D6", -- Ice
	selection = "#383C47", -- Storm

	-- Extras for code
	string = "#81D99A", -- Mint
	constant = "#FFE5B4", -- Apricot
	function_name = "#7C93F2", -- Bluebell
	keyword = "#CFAE6A", -- Sand
	type = "#C25680", -- Orchid
	statement = "#6C82D9", -- Sapphire
}

return M
