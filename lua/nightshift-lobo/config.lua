local M = {}

M.options = {
  transparent = false,
  dim_inactive = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = false, bold = false },
    functions = { italic = false, bold = false },
    strings = { italic = false },
    variables = { italic = false },
  },
}

function M.set(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

return M
