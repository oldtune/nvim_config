require('telescope').setup({
    defaults = {
        path_display    = { "smart" },
        layout_strategy = "vertical",
        layout_config   = {
            horizontal = {
                width = 0.8
            },
            vertical = {
                width = 0.8
            }
        }
    }
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fws', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
-- vim.keymap.set('n', 'gD', builtin., {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
vim.keymap.set('n', 'gt', builtin.lsp_type_definitions, {})
vim.keymap.set('n', '<leader>gt', builtin.treesitter, {})
vim.keymap.set('n', '<leader>gi', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>go', builtin.lsp_outgoing_calls, {})
