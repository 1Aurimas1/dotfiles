local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--depth=1",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"sbdchd/neoformat",
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	{ "catppuccin/nvim", name = "catppuccin" },
	{ "ellisonleao/gruvbox.nvim", name = "gruvbox" },
	{ "rose-pine/neovim", name = "rose-pine" },
	"rebelot/kanagawa.nvim",
	"folke/tokyonight.nvim",

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"theprimeagen/refactoring.nvim",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	"nvim-treesitter/nvim-treesitter-context",

	--{
	--	"VonHeikemen/lsp-zero.nvim",
	--	branch = "v1.x",
	--	dependencies = {
	-- LSP Support
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Autocompletion
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },

	-- Snippets
	{ "L3MON4D3/LuaSnip" },
	{ "rafamadriz/friendly-snippets" },
	--	},
	--},

	"ThePrimeagen/vim-be-good",
	"tpope/vim-fugitive",
})
