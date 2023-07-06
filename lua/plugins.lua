local packer = require('packer')
packer.startup(
    function(use)

    -- package manager
    use 'wbthomason/packer.nvim'

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
    use({
        "glepnir/lspsaga.nvim",
        opt = true,
        branch = "main",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup({})
        end,
        requires = {
            {"nvim-tree/nvim-web-devicons"},
            --Please make sure you install markdown and markdown_inline parser
            {"nvim-treesitter/nvim-treesitter"}
        }
    })

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
        "hrsh7th/cmp-buffer", -- { name = 'buffer' },
        "hrsh7th/cmp-path", -- { name = 'path' }
        "hrsh7th/cmp-cmdline", -- { name = 'cmdline' }
        -- common code snippet
        "rafamadriz/friendly-snippets",
    }

end)
