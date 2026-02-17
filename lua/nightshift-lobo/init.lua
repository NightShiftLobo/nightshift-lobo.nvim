local M = {}
local command_created = false

function M.setup(opts)
  require("nightshift-lobo.config").set(opts)

  if command_created then
    return
  end

  vim.api.nvim_create_user_command("NightshiftLoboFlavour", function(command_opts)
    require("nightshift-lobo.config").set({ flavour = command_opts.args })
    M.load()
  end, {
    nargs = 1,
    complete = function()
      return require("nightshift-lobo.palette").list()
    end,
  })

  command_created = true
end

function M.load()
  local config = require("nightshift-lobo.config").options
  local palette = require("nightshift-lobo.palette")
  local flavour = palette.normalize_flavour(config.flavour)

  if flavour ~= config.flavour then
    require("nightshift-lobo.config").set({ flavour = flavour })
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = palette.background(flavour)
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
