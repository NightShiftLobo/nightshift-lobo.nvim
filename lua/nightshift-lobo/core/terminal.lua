local palette = require("nightshift-lobo.palette")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local c = palette.get(config.options.flavour)

  vim.g.terminal_color_0 = c.overlay0
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.mauve
  vim.g.terminal_color_6 = c.sky
  vim.g.terminal_color_7 = c.text
  vim.g.terminal_color_8 = c.overlay1
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.mauve
  vim.g.terminal_color_14 = c.sky
  vim.g.terminal_color_15 = c.text
end

return M
