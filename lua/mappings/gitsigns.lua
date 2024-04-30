local gitsigns = require('gitsigns')

vim.keymap.set('n', '<leader>gb', function()
    gitsigns.blame_current_line({full=true})
end)
