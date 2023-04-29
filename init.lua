local function notify_message(message)
    vim.api.nvim_notify(message, vim.log.levels.INFO, {})
end

local function execute_command(command)
    vim.cmd(command)
end

local function inspect()
    local input_value = vim.fn.input("Type the thing you want to inspect: ")
    vim.cmd('lua print(vim.inspect(' .. input_value .. '))')
end

local function execute_command_and_open_dialog(command, message)
    execute_command(command)
    notify_message(message)
end

local function toggle_relative_number()
    vim.wo.relativenumber = vim.wo.relativenumber ~= true
end

vim.keymap.set('i', 'jk', '<Esc>')

vim.keymap.set('n', '<C-r><C-r>',
    function()
        execute_command_and_open_dialog('so $MYVIMRC', 'Config reloaded')
    end)

vim.keymap.set('n', '<leader>ci',
    function()
        inspect()
    end,
    { nowait = true })

vim.keymap.set('n', '<leader>tln',
    function()
        toggle_relative_number()
    end)

-- vim.api.nvim_del_keymap('n', '<C-r>')
vim.keymap.set('n', 'U', ':redo<CR>')

vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = ' '
