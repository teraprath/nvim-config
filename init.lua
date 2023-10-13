-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

TABSIZE = 2
TRANSPARENT = true

vim.opt.tabstop = TABSIZE
vim.opt.shiftwidth = TABSIZE
vim.opt.softtabstop = TABSIZE

