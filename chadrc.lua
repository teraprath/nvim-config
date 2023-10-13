---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "github_dark",
  theme_toggle = { "github_dark", "github_dark" },
  transparency = true,
  statusline = {
    separator_style = "arrow",
    overriden_modules = nil,
    transparency = true,
  },
  tabufline = {
    transparency = true,
    overriden_modules = nil,
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = false,
    transparency = true,
    header = {
      "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    },
    buttons = {
      { "  Search File", "<leader> + ff", "Telescope find_files" },
      { "󰈚  Open Recent Files", "<leader> + fo", "Telescope oldfiles"},
      { "  Bookmarks", "<leader> + ma", "Telescope marks" },
      { "  Mappings", "<leader> + ch", "NvCheatsheet" },
    },
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
