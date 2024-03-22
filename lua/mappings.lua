vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = ' '

require('mappings.insert')
require('mappings.normal')
require('mappings.visual')
require('mappings.diagnostics')
