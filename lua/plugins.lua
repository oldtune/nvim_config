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
})

require("mason").setup()
require("mason-lspconfig").setup(
    {
        ensure_installed = { "lua_ls", "rust_analyzer", "angularls" },
        automatic_installation = true
    }
)
require("lspconfig").lua_ls.setup {}
require("lspconfig").rust_analyzer.setup {}
