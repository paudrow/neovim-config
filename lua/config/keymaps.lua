-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift line up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "join bottom line" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scroll up" })
vim.keymap.set("n", "n", "nzz", { desc = "search next" })
vim.keymap.set("n", "N", "Nzz", { desc = "search prev" })

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "paste without yank" })
vim.keymap.set("", "<C-y>", '"+y', { desc = "copy to system clipboard" })
vim.keymap.set("", "<C-Y>", '"+Y', { desc = "copy line to system clipboard" })

vim.keymap.set("n", "<leader>d", '"_d', { desc = "delete without yank" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "delete without yank" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "cnext" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "cprev" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "lnext" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "lprev" })

vim.keymap.set("n", "gt", ":bnext<CR>", { desc = "bnext" })
vim.keymap.set("n", "gT", ":bprev<CR>", { desc = "bprev" })
vim.keymap.set("n", ",", "za", { desc = "toggle fold" })

vim.keymap.set("i", "<C-p>d", "<C-r>=strftime('%Y-%m-%d')<CR>", { desc = "insert date" })
