local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "vue",
    "typescript",
    "tsx",
    "c",
    "c_sharp",
    "java",
    "python",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "vue-language-server",
    "angular-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- dotnet stuff
    "csharp-language-server",
    "csharpier",

    -- python stuff
    "python-lsp-server",
    "pylint",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
