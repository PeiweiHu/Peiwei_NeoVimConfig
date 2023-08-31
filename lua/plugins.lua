local packer = require('packer')
packer.startup(
    function(use)

    -- package manager
    use 'wbthomason/packer.nvim'

    -- theme - tokyonight
    use 'folke/tokyonight.nvim'

    -- theme - github
    use ({ 'projekt0n/github-nvim-theme' })

    -- remove trailing whitespace and empty lines
    use 'mcauley-penney/tidy.nvim'

    -- banner
    use {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
      config = function()
        require"startup".setup(require'plugin-config.startup')
      end
    }

    -- git support
    use 'lewis6991/gitsigns.nvim'

    -- fold support
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    -- lsp support
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- search
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- enhance the lsp experience
    use ({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({})
        end,
    })


    -- status line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- bufferline
    use {'akinsho/bufferline.nvim', tag = "*", requires = {'nvim-tree/nvim-web-devicons', 'moll/vim-bbye'}}

    -- file tree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }

    -- highlight (and fold, incremental selection)
    use 'nvim-treesitter/nvim-treesitter'

    -- autocomplete
    use {
        -- completion plugin
        "hrsh7th/nvim-cmp",
        -- snippet engine
        "hrsh7th/vim-vsnip",
        -- completion source
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
        -- "hrsh7th/cmp-buffer", -- { name = 'buffer' },
        "hrsh7th/cmp-path", -- { name = 'path' }
        -- "hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
        -- common code snippet
        -- "rafamadriz/friendly-snippets",
    }

    -- bookmarks
    use {
        'crusj/bookmarks.nvim',
        branch = 'main',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function()
            require("bookmarks").setup()
            require("telescope").load_extension("bookmarks")
        end
    }

end)
