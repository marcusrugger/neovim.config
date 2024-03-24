print("Hello!")

local g = vim.g
g.t_co = 256
g.background = "dark"

--g.foldermethod = "expr"
--g.foldexpr = nvim_treesitter#foldexpr()
--g.nofoldenable = false

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

