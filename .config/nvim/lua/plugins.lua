local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    --Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'sbdchd/neoformat'
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {'catppuccin/nvim', as = 'catppuccin'}
    use { "ellisonleao/gruvbox.nvim", as = 'gruvbox'}
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use "rebelot/kanagawa.nvim"
    use 'folke/tokyonight.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use("theprimeagen/refactoring.nvim")
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("nvim-treesitter/nvim-treesitter-context");
    --use("hrsh7th/cmp-buffer")

    --use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    --use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    --use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    --use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    --use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use('ThePrimeagen/vim-be-good');
    use('tpope/vim-fugitive');

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
