# NightShift-Lobo.nvim

NightShift Lobo for Neovim.

A focused editor theme with four flavours:
- `eclipse`
- `shadow`
- `obsidian`
- `dawn`

The current build keeps the NightShift UI identity while using a fuller, Catppuccin-inspired semantic highlight layout tuned to the NightShift palette.

## Features

- Four flavours with shared syntax structure
- Tree-sitter highlights
- LSP semantic token fallback groups
- Diagnostics and inlay hints
- Telescope integration
- `nvim-cmp` integration
- `gitsigns` integration
- Terminal and editor UI groups
- ANSI terminal colors

## Syntax Philosophy

NightShift Lobo now uses a clearer role-based syntax lane model:

- comments: muted, italic
- strings: green
- numbers and booleans: orange
- plain variables: neutral foreground
- properties and fields: teal
- functions and methods: blue, italic
- keywords and control flow: purple
- types, classes, interfaces, enums: yellow, italic
- decorators and macros: warm orange
- builtins and special self-like identifiers: red accent
- punctuation: subdued secondary foreground, with operators on soft blue

Markdown hierarchy follows the same system:

- H1: red
- H2: orange
- H3: yellow
- H4: green
- H5: cyan
- H6: soft blue

## Installation

### lazy.nvim

```lua
return {
  {
    "NightShiftLobo/nightshift-lobo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightshift-lobo").setup({
        flavour = "eclipse", -- eclipse | shadow | obsidian | dawn
      })
      require("nightshift-lobo").load()
    end,
  },
}
```

## Configuration

```lua
require("nightshift-lobo").setup({
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
})

require("nightshift-lobo").load()
```

## Usage

```vim
:colorscheme nightshift-lobo
```

Switch flavour at runtime:

```vim
:NightshiftLoboFlavour eclipse
:NightshiftLoboFlavour shadow
:NightshiftLoboFlavour obsidian
:NightshiftLoboFlavour dawn
```

Inspect the active palette:

```vim
:NightshiftLoboInfo
```

## Flavours

### Eclipse

Deepest dark flavour. Strongest NightShift identity.

### Shadow

Balanced dark flavour. Slightly softer surfaces than Eclipse.

### Obsidian

Cooler dark flavour with a denser slate base.

### Dawn

Light flavour using the same syntax logic with softer daytime surfaces.

## Supported Integrations

- Tree-sitter
- Native syntax groups
- LSP diagnostics
- LSP semantic token fallback groups
- Telescope
- `nvim-cmp`
- `gitsigns`
- Floating windows
- completion menus

## Project Structure

```text
nightshift-lobo.nvim/
├── colors/
│   └── nightshift-lobo.lua
├── lua/nightshift-lobo/
│   ├── config.lua
│   ├── init.lua
│   ├── util.lua
│   ├── palette/
│   │   ├── init.lua
│   │   ├── eclipse.lua
│   │   ├── shadow.lua
│   │   ├── obsidian.lua
│   │   └── dawn.lua
│   ├── core/
│   │   ├── editor.lua
│   │   ├── ui.lua
│   │   ├── syntax.lua
│   │   ├── treesitter.lua
│   │   └── lsp.lua
│   └── integrations/
│       ├── cmp.lua
│       ├── gitsigns.lua
│       └── telescope.lua
└── README.md
```

## License

GPL-3.0
