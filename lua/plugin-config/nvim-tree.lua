-- see https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt for reference

require('nvim-tree').setup({
    filters = {
        dotfiles = true,
        custom = {}, -- define the things wanna hide
    },
    view = {
        width = 30,
        side = 'left',
        hide_root_folder = false,
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = false,
        },
    }
})
