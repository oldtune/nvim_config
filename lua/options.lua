vim.lsp.set_log_level("TRACE")
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = ' '

local option = vim.o

option.tabstop = 4
option.shiftwidth = 4
option.softtabstop = 4
-- option.noexpandtab = true
option.expandtab = false
option.autoindent = true
option.number = true
option.wrap = true
option.smartcase = true
option.ignorecase = true
option.scrolloff = 10
option.signcolumn = "number"

vim.opt.listchars = {
    tab = '>>',
    -- lead = '·',
    -- space = '·',
    trail = '·',
    eol = "⸙",
    multispace = "···➸"
}

vim.opt.list = true
