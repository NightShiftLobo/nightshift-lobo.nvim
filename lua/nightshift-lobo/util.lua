local M = {}

function M.highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(groups)
  for group, opts in pairs(groups) do
    M.highlight(group, opts)
  end
end

return M
