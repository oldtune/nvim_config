require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    -- flavour = "auto" -- will respect terminal's background
    background = {     -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
    term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true,            -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,         -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,             -- Force no italic
    no_bold = false,               -- Force no bold
    no_underline = false,          -- Force no underline
    styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },   -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
vim.api.nvim_command("hi LineNr guifg=#5DE23C")
vim.api.nvim_command("hi CursorLineNr guifg=#A020F0")
vim.api.nvim_command("hi CursorLineNr guibg=#FF930F")
vim.api.nvim_command("hi CursorColumn guifg=#FF930F guibg=#A020F0")
vim.api.nvim_command("hi Cursor guifg=#FF930F guibg=#A020F0")
vim.api.nvim_command("hi TelescopeBorder guifg=orange guibg=transparent")
vim.api.nvim_command("hi TelescopePreviewBorder guifg=orange guibg=transparent")
-- vim.api.nvim_command("hi Cursor ctermbg=#FF930F ctermfg=#A020F0")
-- vim.api.nvim_command("hi Cursor ")
-- vim.api.nvim_command("hi iCursor guifg=#A020F0")
-- vim.api.nvim_command("hi iCursor guibg=#ff930f")
