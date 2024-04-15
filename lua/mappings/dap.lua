local dap = require('dap')

vim.api.set_key_map('n', '<C-9>', function()
    dap.toggle_breakpoint()
end)

vim.api.set_key_map('n', '<C-5>', function()
    dap.continue()
end)

vim.api.set_key_map('n', '<C-0>', function()
dap.step_over()
end)

vim.api.set_key_map('n', '<C-->', function()
dap.step_into()
end)
