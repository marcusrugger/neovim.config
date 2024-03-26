-- [[ plug.lua ]]

return require('packer').startup(function(use)

    -- [[ Plugins Go Here ]]
    use {                                               -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'       -- filesystem icons
    }
    -- use { 'mhinz/vim-startify' }                     -- start screen
    use { 'DanilaMihailov/beacon.nvim' }                -- cursor jump
    use {
        'nvim-lualine/lualine.nvim',                    -- statusline
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true}
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                          , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'kdheepak/lazygit.nvim' }             -- lazygit
    use { 'github/copilot.vim' }                -- Github Copilot
    -- use { 'numToStr/FTerm.nvim' }               -- floating terminal
    use { 'akinsho/toggleterm.nvim' }           -- toggle terminal
    use { 'nvim-treesitter/nvim-treesitter' }   -- tree sitter
    use { 'christoomey/vim-tmux-navigator' }    -- tmux navigation

    -- [[ Theme ]]
    use { 'Mofiqul/vscode.nvim' }
    use { 'Mofiqul/adwaita.nvim' }
    use {
        'folke/tokyonight.nvim',
        style = 'night'
    }
    use {
        'bluz71/vim-moonfly-colors',
        name = 'moonfly'
    }

end)
