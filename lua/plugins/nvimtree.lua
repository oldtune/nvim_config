-- empty setup using defaults
require("nvim-tree").setup({
    update_focused_file = {
        enable = true,
    },
    diagnostics = {
        enable = true,
        min = vim.diagnostic.severity.ERROR
    },
    modified = {
        enabled = true
    }
})
