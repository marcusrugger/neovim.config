--[[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

-- Snip...

-- [[ Context ]]
opt.number = true                -- bool: Show line numbers
opt.relativenumber = false        -- bool: Show line numbers relative to the line with the cursor
-- opt.cursorlineopt = "number"     -- str:  Highlight the linenumber with the cursor with a different background
-- opt.number = true

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable
vim.g.adwaita_darker = true
cmd('colorscheme adwaita')        -- cmd:  Set the colorscheme

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for


opt.wrap = false

