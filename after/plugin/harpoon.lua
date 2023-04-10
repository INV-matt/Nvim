local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { silent = true })
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, { silent = true })

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { silent = true })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { silent = true })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { silent = true })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { silent = true })
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end, { silent = true })
