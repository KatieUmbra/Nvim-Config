-- [[ plug.lua ]]
require('impatient')
return require('packer').startup(function(use)
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- File tree
    use 'nvim-tree/nvim-tree.lua'
    -- Indent Blankline
    use "lukas-reineke/indent-blankline.nvim"
    -- BarBar and web icons
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
    -- pink moon
    use "sts10/vim-pink-moon"
    -- LuaLine
    use 'nvim-lualine/lualine.nvim'
    -- LSP 
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind-nvim'
    use 'lewis6991/impatient.nvim'
    use 'andweeb/presence.nvim'
    use 'mhinz/vim-startify'
    use 'rmagatti/auto-session'
    use 'simrat39/rust-tools.nvim'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use 'm4xshen/autoclose.nvim'
end)
