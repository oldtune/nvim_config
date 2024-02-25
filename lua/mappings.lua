vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = ' '

vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('v', 'y', '"+y')
vim.keymap.set('v', 'p', '"+p')
vim.keymap.set('n', 'p', '"+p')
vim.keymap.set('n', 's', function()
    require('leap').leap { target_windows = { vim.api.nvim_get_current_win() } }
end)
vim.keymap.set('n', '<leader>nh', '<Cmd>nohl<CR>', { silent = true })
vim.keymap.set('n', '<C-s>', '<Cmd>w<CR>', { silent = false })
vim.keymap.set('n', 'y', '"+y', { noremap = true })
vim.keymap.set('n', 'p', '"+p', { noremap = true })
vim.keymap.set('n', 'x', '"+x', { noremap = true })
vim.keymap.set('v', 'y', '"+y', { noremap = true })
vim.keymap.set('v', 'p', '"+p', { noremap = true })
vim.keymap.set('v', 'x', '"+x', { noremap = true })
