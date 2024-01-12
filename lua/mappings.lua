vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = ' '

vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('v', 'y', '"+y')
vim.keymap.set('v', 'p', '"+p')
vim.keymap.set('n', 'p', '"+p')
vim.keymap.set('n', 's', '<Plug>Lightspeed_omni_s')
vim.keymap.set('n', '<leader>nh', '<Cmd>nohl<CR>', { silent = true })
