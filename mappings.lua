---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- Disable default keybinds
M.disabled = {
  n = {
    ["<leader>th"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<leader>cm"] = "",
    ["<leader>gt"] = "",
    ["<leader>e"] = "",
    ["<C-n"] = "",
    ["<leader>fm"] = "",
    ["<leader>ca"] = "",
    ["<leader>ch"] = "",
    ["<leader>cc"] = "",
    ["<leader>ra"] = "",
    ["<leader>rn"] = "",
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leader>ma"] = "",
    ["<leader>n"] = "",
    ["<leader>ph"] = "",
    ["<leader>rh"] = "",
    ["<leader>td"] = "",
  }
}

-- More keybinds!

M.general = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle file explorer" },
    ["<leader>h"] = { "<cmd> NvCheatsheet <CR>", "Help" },
    ["<leader>U"] = { "<cmd> NvChadUpdate <CR>", "Update" },
  }
}

M.gitsigns = {
  n = {
    ["<leader>g"] = {"Git"},
    ["<leader>gc"] = {"<cmd> Telescope git_commits <CR>", "Git commits", "Git Commit"},
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status"},
    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },
    ["<leader>gt"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  }
}

M.telescope = {
  n = {
    ["<leader>f"] = {"Find"},
    ["<leader>fm"] = { "<cmd> Telescope marks <CR>", "Find bookmarks" },
  }
}

M.whichkey = {
  n = {
    ["<leader>w"] = {"Which-key"},
  }
}

M.lsp = {
  n = {

    ["<leader>l"] = {"LSP"},
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>ld"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>lr"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["lR"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>lw"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>lW"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>ll"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },

  v = {
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
 }

M.terminal = {
  n = {
    ["<leader>t"] = {"Terminal"},
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "Horiontal terminal"
    },
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "Vertical terminal"
    },
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Floating terminal"
    }
  }
}

M.preferences = {
  n = {
    ["<leader>p"] = {"Preferences"},
    ["<leader>ps"] = {
      function ()
        if (TABSIZE == 2) then
          TABSIZE = 4
        else
          TABSIZE = 2
        end
        vim.opt.tabstop = TABSIZE
        vim.opt.shiftwidth = TABSIZE
        vim.opt.softtabstop = TABSIZE
      end,
      "Toggle tab size"
    },
    ["<leader>pt"] = {"<cmd> Telescope themes <CR>", "Change theme"},
    ["<leader>pn"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    ["<leader>pr"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },
    ["<leader>pb"] = {
      function()
        TRANSPARENT = not TRANSPARENT
        require("base46").toggle_transparency()
      end,
      "Toggle background visibility"
    },
  }
}

return M
