-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fp", function()
  print(vim.fn.expand("%:p"))
end, { desc = "Echo full file path" })

vim.keymap.set("n", "<leader>fc", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied full file path to clipboard")
end, { desc = "Copy full file path to clipboard" })

vim.keymap.set("n", "<leader>fn", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  print("Copied filename to clipboard")
end, { desc = "Copy filename to clipboard" })
