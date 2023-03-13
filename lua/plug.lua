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
    -- CMP
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "VonHeikemen/lsp-zero.nvim"
    -- pictograms for the suggestions 
    use 'onsails/lspkind-nvim'
    -- improves module load
    use 'lewis6991/impatient.nvim'
    -- discord presence
    use 'andweeb/presence.nvim'
    -- vim start screen
    use 'mhinz/vim-startify'
    -- session restoring
    use 'rmagatti/auto-session'
    -- nvim rust stuff
    use 'simrat39/rust-tools.nvim'
    -- bracket autoclose
    use 'm4xshen/autoclose.nvim'
    -- Terminal <Leader>t and code runner <Leader>n
    use 'CRAG666/betterTerm.nvim'
    use 'CRAG666/code_runner.nvim'
    -- wakatime for time management
    use 'wakatime/vim-wakatime'
    -- Project management
    use 'ahmedkhalf/project.nvim'
    -- vim inspector
    use 'puremourning/vimspector'
    -- iluminate selected word appearances
    use 'RRethy/vim-illuminate'
    -- easily comment lines
    use 'numToStr/Comment.nvim'
    -- highlight argument's uses and definitions
    use 'm-demare/hlargs.nvim'
end)
