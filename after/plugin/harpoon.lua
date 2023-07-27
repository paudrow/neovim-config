local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>Ha", mark.add_file, { desc = "Add file" })
vim.keymap.set("n", "<leader>Hm", ui.toggle_quick_menu, { desc = "Show quick menu" })

vim.keymap.set("n", "<leader>Hh", function()
    ui.nav_file(1)
end, { desc = "Go to file 1" })
vim.keymap.set("n", "<leader>Ht", function()
    ui.nav_file(2)
end, { desc = "Go to file 2" })
vim.keymap.set("n", "<leader>Hn", function()
    ui.nav_file(3)
end, { desc = "Go to file 3" })
vim.keymap.set("n", "<leader>Hs", function()
    ui.nav_file(4)
end, { desc = "Go to file 4" })