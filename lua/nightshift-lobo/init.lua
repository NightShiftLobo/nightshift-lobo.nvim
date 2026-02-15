local M = {}

function M.setup(opts)
  require("nightshift-lobo.config").set(opts)
end

function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
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
