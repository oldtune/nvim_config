local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup({
    {
        "ggandor/leap.nvim",
        ignore_case = true,
        jump_to_unique_chars = true,
        substitute_chars = { ['\r'] = '¬', },
        highlight_unique_chars = true,
        grey_out_current_match = true,
    },

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',         -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp',     -- LSP source for nvim-cmp
    'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
    'L3MON4D3/LuaSnip',         -- Snippets plugin
    "nvim-tree/nvim-web-devicons",
    'nvim-treesitter/nvim-treesitter',
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    { 'kevinhwang91/nvim-hlslens' },
    {
        "ggandor/flit.nvim",
        dependencies = { 'ggandor/leap.nvim', 'tpope/vim-repeat' }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        'mfussenegger/nvim-dap'
    },
    { 'tpope/vim-commentary' },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    }
})

require("plugins.lsp")
require("plugins.autocomplete")
require("plugins.treesitter")
require("plugins.catpuccin")
require("plugins.nvimtree")
require("plugins.telescope")
require("plugins.bufferline")
require("plugins.indentblankline")
require("plugins.hlslens")
require("plugins.flit")
require('plugins.trouble')
require('plugins.lualine')
