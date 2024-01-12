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
        "ggandor/lightspeed.nvim",
        ignore_case = true,
        jump_to_unique_chars = true,
        substitute_chars = { ['\r'] = '¬', },
        highlight_unique_chars = true,
        grey_out_current_match = true,
    }
})
