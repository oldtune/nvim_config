vim.lsp.set_log_level("TRACE")
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = ' '
vim.o.background = 'dark'
vim.o.guifont = "FiraCode Nerd Font:h10"
local option = vim.o

vim.opt.termguicolors = true
-- nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

option.tabstop = 4
option.shiftwidth = 4
option.softtabstop = 4
-- option.noexpandtab = true
option.expandtab = false
option.number = true
option.smartcase = true
option.ignorecase = true
option.scrolloff = 10
option.signcolumn = "number"

-- vim.opt.listchars = {
-- tab = '>>',
-- lead = '·',
-- space = '·',
-- trail = '·',
-- eol = "⸙",
-- multispace = "│   "
-- }

option.autoindent = true
option.wrap = true
vim.opt.list = true
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.showbreak = string.rep(" ", 3)
-- vim.g.indentline_char = "│"
vim.opt.cursorline = true
-- vim.api.nvim_set_hl_attr(nil, "LineNr", { guifg = "#5DE23C" })
