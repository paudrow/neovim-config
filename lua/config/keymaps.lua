-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Text manipulation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Shift lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Shift line up" })

-- Moving around
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join bottom line" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
vim.keymap.set("n", "n", "nzz", { desc = "Search next" })
vim.keymap.set("n", "N", "Nzz", { desc = "Search prev" })

-- Yanking behavior
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yank" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })
vim.keymap.set("v", "<leader>Y", '"+Y', { desc = "Copy line to system clipboard" })

-- Buffers
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
vim.keymap.set("n", "<leader>br", ":BufferLineCloseRight<CR>", { desc = "Close right buffers" })
vim.keymap.set("n", "<leader>bl", ":BufferLineCloseLeft<CR>", { desc = "Close left buffers" })
vim.keymap.set("n", "gt", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "gT", ":bprev<CR>", { desc = "Previous buffer" })

-- Text shortcuts
vim.keymap.set("i", "<C-p>d", "<C-r>=strftime('%Y-%m-%d')<CR>", { desc = "Insert date" })

-- Other
vim.keymap.set("n", "<C-s>", ":w<CR>:lua vim.lsp.buf.format()<CR>", { desc = "Save and format" })
vim.keymap.set("n", ",", "za", { desc = "Toggle fold" })

