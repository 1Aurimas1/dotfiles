local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

--vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
--nmap { "<M-h><M-l>", require("harpoon.ui").toggle_quick_menu }
for i = 1, 4 do
	vim.keymap.set("n", string.format("<leader>%s", i), function() ui.nav_file(i) end)
end
