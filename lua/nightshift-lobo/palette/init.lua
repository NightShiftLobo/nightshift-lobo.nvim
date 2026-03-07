local M = {}

local ordered_flavours = { "eclipse", "shadow", "obsidian", "dawn" }

local raw_palettes = {
  eclipse = require("nightshift-lobo.palette.eclipse"),
  shadow = require("nightshift-lobo.palette.shadow"),
  obsidian = require("nightshift-lobo.palette.obsidian"),
  dawn = require("nightshift-lobo.palette.dawn"),
}

local flavour_types = {
  eclipse = "dark",
  shadow = "dark",
  obsidian = "dark",
  dawn = "light",
}

local resolved_cache = {}

function M.list()
  return ordered_flavours
end

function M.normalize_flavour(flavour)
  if type(flavour) ~= "string" or not raw_palettes[flavour] then
    return "eclipse"
  end
  return flavour
end

function M.background(flavour)
  local normalized = M.normalize_flavour(flavour)
  return flavour_types[normalized]
end

local function resolve_palette(raw, flavour)
  local is_light = flavour_types[flavour] == "light"

  return {
    none = "NONE",
    bg_0 = raw.bg_0,
    bg_1 = raw.bg_1,
    bg_2 = raw.bg_2,
    bg_3 = raw.bg_3,
    bg_4 = raw.bg_4,
    border = raw.border,
    fg_primary = raw.fg_primary,
    fg_secondary = raw.fg_secondary,
    fg_muted = raw.fg_muted,
    comment = raw.comment,
    blue = raw.blue,
    blue_soft = raw.blue_soft,
    cyan = raw.cyan,
    teal = raw.teal,
    green = raw.green,
    yellow = raw.yellow,
    orange = raw.orange,
    red = raw.red,
    purple = raw.purple,
    selection = raw.selection,
    cursor = raw.cursor,
    success = raw.success,
    warning = raw.warning,
    error = raw.error,
    info = raw.info,
    diff_add = raw.diff_add,
    diff_change = raw.selection,
    diff_delete = is_light and raw.bg_2 or raw.bg_1,

    bg = raw.bg_0,
    base = raw.bg_0,
    bg_alt = raw.bg_1,
    surface = raw.bg_2,
    surface_alt = raw.bg_3,
    surface_hi = raw.bg_4,
    fg = raw.fg_primary,
    text = raw.fg_primary,
    fg_dim = raw.fg_secondary,
    fg_soft = raw.fg_muted,
    accent = raw.blue,
    accent_alt = raw.blue_soft,
    peach = raw.orange,
    sky = raw.cyan,
    magenta = raw.purple,
    pink = raw.purple,
    string = raw.green,
    constant = raw.orange,
    hint = raw.cyan,
    keyword = raw.yellow,
    type = raw.purple,
    func = raw.blue,
    property = raw.teal,
    decorator = raw.orange,
    builtin = raw.red,
    operator = raw.cyan,
    punctuation = raw.fg_secondary,
    cursorline = raw.bg_1,
    heading_1 = raw.red,
    heading_2 = raw.orange,
    heading_3 = raw.yellow,
    heading_4 = raw.green,
    heading_5 = raw.cyan,
    heading_6 = raw.blue_soft,
    rainbow1 = raw.red,
    rainbow2 = raw.orange,
    rainbow3 = raw.yellow,
    rainbow4 = raw.green,
    rainbow5 = raw.cyan,
    rainbow6 = raw.blue_soft,
  }
end

function M.get(flavour)
  local normalized = M.normalize_flavour(flavour)
  if not resolved_cache[normalized] then
    resolved_cache[normalized] = resolve_palette(raw_palettes[normalized], normalized)
  end

  return resolved_cache[normalized]
end

return M
