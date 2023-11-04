vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pc", "<cmd>e ~/.config/nvim<CR>")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

--vim.keymap.set("n", "<C-Up>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-Down>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader><Up>", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader><Down>", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<PageUp>", "<cmd>bprevious<CR>zz")
vim.keymap.set("n", "<PageDown>", "<cmd>bnext<CR>zz")
vim.keymap.set("n", "<leader>vrn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
