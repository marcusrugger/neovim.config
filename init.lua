--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

vim.g.OmniSharp_server_use_mono = 0
vim.g.OmniSharp_server_use_net6 = 1

vim.cmd [[
  set exrc
  set secure
]]

require("plug")
require("basic")
require("opts")
require("keys")

-- PLUGINS: Add this section
require('nvim-tree').setup {
    view = {
        width = 60,
        side = 'left'
    }
}

require('lualine').setup {
    options = {
        theme = 'adwaita'
    }
}

require('toggleterm').setup {
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

-- vim.g.OmniSharp_server_path = "linux.assets"

-- require('omnisharp').setup {
--     server = {
--         command = { 'omnisharp', '--languageserver' },
--         capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--     }
-- }
