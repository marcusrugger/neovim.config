--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

require("basic")
require("opts")
require("keys")
require("plug")

-- PLUGINS: Add this section
require('nvim-tree').setup{}

require('lualine').setup {
    options = {
        theme = 'adwaita'
    }
}

require('toggleterm').setup{
    open_mapping = [[<m-\>]],
    direction = 'float'
}

-- require('FTerm').setup {
--     border = 'rounded'
-- }

require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    folder = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
    ensure_installed = { "bash","c_sharp","lua","python","json","yaml" }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.opt.foldopen = ""

