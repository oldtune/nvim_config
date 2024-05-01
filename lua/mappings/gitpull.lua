vim.keymap.set('n', '<leader>u', function()
    local gitpull = require('plugins.gitpull')
    gitpull.pull();
end)
