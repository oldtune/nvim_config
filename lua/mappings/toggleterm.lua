require "toggleterm"
vim.keymap.set('n', '<C-\\>', function()
    vim.api.nvim_command("ToggleTerm size=40 direction=float")
end)

vim.keymap.set('t', '<C-\\>', function()
    vim.api.nvim_command("ToggleTerm")
end)
