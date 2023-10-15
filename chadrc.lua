---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "bearded-arc" },
  transparency = TRANSPARENT,
  statusline = {
    separator_style = "arrow",
    transparency = TRANSPARENT,
    overriden_modules = nil,
  },
  tabufline = {
    transparency = TRANSPARENT,
    overriden_modules = nil,
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
    header = {
      "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    },
    buttons = {
      { "  Search File", "<spc> + ff", "Telescope find_files" },
      { "󰈚  Open Recent Files", "<spc> + fo", "Telescope oldfiles"},
      { "  Bookmarks", "<spc> + fm", "Telescope marks" },
      { "  Mappings", "<spc> + h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
