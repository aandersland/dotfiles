local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
vim.fn.system({
"git",
"clone",
"--filter=blob:none",
"https://github.com/folke/lazy.nvim.git",
"--branch=stable", -- latest stable release
lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    "folke/tokyonight.nvim",
    
    'ThePrimeagen/git-worktree.nvim',
    
    'mbbill/undotree',

    "folke/which-key.nvim",

    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
          require("trouble").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
          }
        end
      },
      {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        lazy = false,
        config = function()
          require("todo-comments").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
          }
        end
      },
    {
        -- LSP configurations
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'j-hui/fidget.nvim'
        }
    },
    {
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = {'hrsh7th/cmp-nvim-lsp', "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline",'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'}
    },
    {
        -- Navigation
        'nvim-treesitter/nvim-treesitter',
        build = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    },
    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
    'theHamsta/nvim-dap-virtual-text',
    'leoluz/nvim-dap-go',
    
    'tpope/vim-fugitive',
    'lewis6991/gitsigns.nvim',

    'numToStr/Comment.nvim',

    -- Fuzzy finder
    {'nvim-telescope/telescope.nvim', branch = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim'}},

    -- 'ThePrimeagen/harpoon',

    -- Fuzzy finder algorithm
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable 'make' == 1},
})

