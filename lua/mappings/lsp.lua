local lsp = require('lspconfig')
vim.keymap.set('n', '<leader>/', function()
    lsp.command('comment')
end)

vim.keymap.set('n', '<leader>?', function()
    lsp.command('uncomment')
end)
