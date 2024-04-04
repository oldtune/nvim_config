require("bufferline").setup {
    options = {
        numbers = "ordinal",
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 0,
            reveal = { 'close' },
        },
        diagnostics = "nvim_lsp",
        offsets = { { filetype = "NvimTree", text = "", padding = 0 } }
    }
}
