-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Indentation
local tabsize = 4
opt.tabstop = tabsize
opt.softtabstop = tabsize
opt.shiftwidth = tabsize
opt.expandtab = true
opt.smartindent = true

-- Backups
opt.swapfile = false
opt.backup = false
opt.undofile = true
---@diagnostic disable-next-line: assign-type-mismatch
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Search behavior
opt.hlsearch = false
opt.incsearch = true

-- Feel
opt.scrolloff = 8 -- keep padding at top and bottom when scrolling

-- Disable wrapping by default
opt.wrap = false
