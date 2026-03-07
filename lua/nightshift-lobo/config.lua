local M = {}

M.options = {
  flavour = "eclipse",
  transparent = false,
  dim_inactive = false,
  term_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = false, bold = false },
    functions = { italic = true, bold = false },
    strings = { italic = false },
    variables = { italic = false },
    numbers = {},
    booleans = {},
    properties = {},
    types = { italic = true },
    operators = {},
  },
}

local valid_flavours = {
  eclipse = true,
  shadow = true,
  obsidian = true,
  dawn = true,
}

function M.set(opts)
  local merged = vim.tbl_deep_extend("force", M.options, opts or {})
  if not valid_flavours[merged.flavour] then
    merged.flavour = "eclipse"
  end
  M.options = merged
end

return M
