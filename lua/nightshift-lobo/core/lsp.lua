local palette = require("nightshift-lobo.palette")
local util = require("nightshift-lobo.util")
local config = require("nightshift-lobo.config")

local M = {}

function M.load()
  local cfg = config.options
  local c = palette.get(cfg.flavour)
  local virtual_text_bg = cfg.transparent and c.none or c.bg_alt

  util.apply({
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.green },

    DiagnosticVirtualTextError = { fg = c.red, bg = virtual_text_bg, italic = true },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = virtual_text_bg, italic = true },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = virtual_text_bg, italic = true },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = virtual_text_bg, italic = true },
    DiagnosticVirtualTextOk = { fg = c.green, bg = virtual_text_bg, italic = true },

    DiagnosticFloatingError = { fg = c.red },
    DiagnosticFloatingWarn = { fg = c.yellow },
    DiagnosticFloatingInfo = { fg = c.info },
    DiagnosticFloatingHint = { fg = c.hint },
    DiagnosticFloatingOk = { fg = c.green },

    DiagnosticSignError = { fg = c.red, bg = c.none },
    DiagnosticSignWarn = { fg = c.yellow, bg = c.none },
    DiagnosticSignInfo = { fg = c.info, bg = c.none },
    DiagnosticSignHint = { fg = c.hint, bg = c.none },
    DiagnosticSignOk = { fg = c.green, bg = c.none },

    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.green },
    DiagnosticDeprecated = { fg = c.fg_soft, strikethrough = true },
    DiagnosticUnnecessary = { fg = c.fg_soft, italic = true },

    LspReferenceText = { bg = c.surface },
    LspReferenceRead = { bg = c.surface },
    LspReferenceWrite = { bg = c.surface_alt },

    LspCodeLens = { fg = c.border },
    LspCodeLensSeparator = { fg = c.border },
    LspSignatureActiveParameter = { fg = c.accent, bg = c.surface, bold = true },
    LspInlayHint = { fg = c.fg_soft, bg = virtual_text_bg },
    LspInfoBorder = { link = "FloatBorder" },

    LspDiagnosticsDefaultError = { fg = c.red },
    LspDiagnosticsDefaultWarning = { fg = c.yellow },
    LspDiagnosticsDefaultInformation = { fg = c.info },
    LspDiagnosticsDefaultHint = { fg = c.hint },
    LspDiagnosticsError = { fg = c.red },
    LspDiagnosticsWarning = { fg = c.yellow },
    LspDiagnosticsInformation = { fg = c.info },
    LspDiagnosticsHint = { fg = c.hint },
    LspDiagnosticsVirtualTextError = { fg = c.red, italic = true },
    LspDiagnosticsVirtualTextWarning = { fg = c.yellow, italic = true },
    LspDiagnosticsVirtualTextInformation = { fg = c.info, italic = true },
    LspDiagnosticsVirtualTextHint = { fg = c.hint, italic = true },
    LspDiagnosticsUnderlineError = { undercurl = true, sp = c.red },
    LspDiagnosticsUnderlineWarning = { undercurl = true, sp = c.yellow },
    LspDiagnosticsUnderlineInformation = { undercurl = true, sp = c.info },
    LspDiagnosticsUnderlineHint = { undercurl = true, sp = c.hint },

    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@property" },
    ["@lsp.type.event"] = { fg = c.accent },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { link = "@function.macro" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.modifier"] = { link = "@keyword.modifier" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.regexp"] = { link = "@string.regexp" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type" },
    ["@lsp.type.variable"] = { link = "@variable" },

    ["@lsp.mod.deprecated"] = { strikethrough = true, fg = c.fg_soft },
    ["@lsp.mod.readonly"] = { fg = c.fg },
    ["@lsp.mod.defaultLibrary"] = { fg = c.constant },
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.defaultLibrary"] = { link = "@keyword" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.property.readonly"] = { fg = c.property, italic = true },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.constant },
  })
end

return M
