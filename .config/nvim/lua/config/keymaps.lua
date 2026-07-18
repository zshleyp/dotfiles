-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

vim.g.mapleader = " "
map("n", "<leader>u", vim.cmd.UndotreeToggle)
map("n", "<leader>gs", vim.cmd.Git)

map({ "n", "i", "v" }, "<C-f>", "<C-f>zz")
map({ "n", "i", "v" }, "<C-b>", "<C-b>zz")
map({ "n", "i", "v" }, "<C-u>", "<C-u>zz")
map({ "n", "i", "v" }, "<C-d>", "<C-d>zz")

map({ "n", "v", "o" }, "<leader>d", [["_d]])
map({ "n", "v", "o" }, "<leader>dd", [["_dd]])
map({ "n", "v", "o" }, "<leader>D", [["_D]])
map("n", "x", [["_dl]])

-- Stolen from lazy.vim lmao
map("n", "<D-J>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<D-K>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<D-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<D-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<D-J>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<D-K>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- idk what this does but im too lazy to remove it zzz
local opts = { noremap = true }

map("i", "jj", "<Esc>", opts)
map("n", "gd", vim.lsp.buf.definition)
map("n", "<leader>r", vim.lsp.buf.rename)
