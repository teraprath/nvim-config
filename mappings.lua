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
  }
}

local close_terminal_msg = "Type 'exit' to close terminal."

-- More keybinds!

M.git = {
  n = {
    ["<leader>g"] = {"Git"}
  }
}

M.lsp = {
  n = {
    ["<leader>l"] = {"LSP"}
  }
}

M.terminal = {
  n = {
    ["<leader>t"] = {"Terminal"},
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
        print(close_terminal_msg)
      end,
      "Horiontal terminal"
    },
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
        print(close_terminal_msg)
      end,
      "Vertical terminal"
    },
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
        print(close_terminal_msg)
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
    ["<leader>pr"] = {
      function ()
        if (vim.wo.relativenumber == true) then
          vim.wo.relativenumber = false;
        else
          vim.wo.relativenumber = true;
        end
      end,
      "Toggle relative numbers"
    },
  }
}

return M
