-- pcall catches errors if the plugin doesn't load
--local ok, gruvbox = pcall(require, "gruvbox")
--if not ok then return end

--gruvbox.setup({})
require("gruvbox").setup({})
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.cmd([[hi! Normal ctermbg=None guibg=None]])
--vim.g.gruvbox_contrast_dark = "hard"
--vim.g.gruvbox_invert_selection = "0"
