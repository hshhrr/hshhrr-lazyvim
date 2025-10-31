-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Move LSP Info to <leader>ci
-- map("n", "<leader>ci", "<cmd>LspInfo<CR>", { desc = "LSP Info" })

-- Run linter
map("n", "<leader>cL", function()
  require("lint").try_lint()
end, { desc = "Lint" })
