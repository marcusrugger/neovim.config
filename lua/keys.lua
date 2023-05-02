--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle<cr>]], {})

local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

-- NvimTree
-- local nvimtree = require('nvim-tree.api')
-- vim.keymap.set('n', '<LeftRelease>', nvimtree.node.open.edit, opts('CD'))

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fG', telescope.grep_string, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>fs', telescope.current_buffer_fuzzy_find, {})

-- LazyGit
vim.keymap.set('n', '<leader>g', [[:LazyGit<cr>]], {})

-- FTerm
vim.keymap.set('n', '<leader>t', [[:lua require('FTerm').toggle()<cr>]], {})
