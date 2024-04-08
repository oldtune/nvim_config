require("bufferline").setup {
    options = {
        numbers = "ordinal",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 1,
            reveal = { 'close' },
        },
        diagnostics = "nvim_lsp",
        offsets = { { filetype = "NvimTree", text = "", padding = 0 } }
    }
}
