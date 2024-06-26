require("bufferline").setup {
    options = {
        numbers = "ordinal",
        indicator = {
            style = 'underline'
        },
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 1,
            reveal = { 'close' },
        },
        diagnostics = "nvim_lsp",
        offsets = { { filetype = "NvimTree", text = "", padding = 0 } },
    },
    highlights = {
        indicator_selected = {
            fg = "red",
            bg = "#08a808"
        },
        indicator_visible = {
            fg = "orange",
            bg = "blue"
        }
    }
}
