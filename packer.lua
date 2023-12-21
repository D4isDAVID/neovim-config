vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Required
    use 'nvim-lua/plenary.nvim' -- Required

    -- Files
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }
    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }
    use 'mbbill/undotree'

    -- Colors
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- Utils
    use 'tpope/vim-fugitive'
    use 'tpope/vim-sleuth'

    use 'andweeb/presence.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'saadparwaiz1/cmp_luasnip' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' },

            -- Formatting
            { 'joechrisellis/lsp-format-modifications.nvim' },
            {
                'prettier/vim-prettier',
                run = 'yarn install --frozen-lockfile --production',
            },
        }
    }
end)
