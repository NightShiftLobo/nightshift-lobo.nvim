-- NightShiftLobo color palette.
-- Source palette values are fixed from the design spec.
local M = {}

M.colors = {
  bg = "#1B1D23",
  bg_alt = "#22252C",
  surface = "#2A2E37",
  surface_alt = "#303540",
  fg = "#D7DAE3",
  fg_dim = "#BFC3D0",
  fg_soft = "#A8ACC0",
  accent = "#6C82D9",
  yellow = "#CFAE6A",
  green = "#6CBF84",
  red = "#D67A7A",
  cyan = "#56B6C2",
  teal = "#5FA8B8",
  magenta = "#C25680",
  pink = "#D05A8E",
  string = "#81D99A",
  constant = "#FFE5B4",
  hint = "#B2A1FF",
  border = "#303540",
  selection = "#383C47",
  cursor = "#6C82D9",

  -- Semantic aliases used across highlight modules.
  comment = "#A8ACC0",
  keyword = "#CFAE6A",
  type = "#C25680",
  func = "#6C82D9",
  property = "#5FA8B8",
  info = "#56B6C2",
}

return M
