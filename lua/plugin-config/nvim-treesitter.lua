vim.cmd 'packadd nvim-treesitter'

require 'nvim-treesitter.configs'.setup {
    -- ensure_installed = "maintained", -- for installing all maintained parsers
    ensure_installed = { "c", "cpp", "rust", "lua", "python" }, -- for installing specific parsers
    sync_install = true, -- install synchronously
    ignore_install = {}, -- parsers to not install
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false, -- disable standard vim highlighting
    },
}


-- we assign the folding to the plugin <ufo>, so close here
--
-- enable folding
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
-- vim.opt.foldlevel = 99

