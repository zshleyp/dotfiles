-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set({ "n", "i", "v" }, "<C-f>", "<C-f>zz")
vim.keymap.set({ "n", "i", "v" }, "<C-b>", "<C-b>zz")
vim.keymap.set({ "n", "i", "v" }, "<C-u>", "<C-u>zz")
vim.keymap.set({ "n", "i", "v" }, "<C-d>", "<C-d>zz")

vim.keymap.set({ "n", "v", "o" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v", "o" }, "<leader>dd", [["_dd]])
vim.keymap.set({ "n", "v", "o" }, "<leader>D", [["_D]])
vim.keymap.set("n", "x", [["_dl]])

--CUSTOM KEYBINDS!!!
local opts = { noremap = true }

vim.keymap.set({ "n", "v" }, "<M-b>", "%", opts)

--vim.keymap.set({ "n", "v", "o" }, "i", "k", opts)
--vim.keymap.set({ "n", "v", "o" }, "k", "j", opts)
--vim.keymap.set({ "n", "v", "o" }, "j", "h", opts)
--vim.keymap.set({ "n", "v", "o" }, "H", "I", opts)
--
--vim.keymap.set({ "n", "v", "o" }, "h", "i", opts)
vim.keymap.set("i", "jj", "<Esc>", opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
