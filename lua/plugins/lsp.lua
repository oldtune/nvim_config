require("mason").setup({
})

require("mason-lspconfig").setup(
    {
        ensure_installed = { "lua_ls", "rust_analyzer", "omnisharp" },
        automatic_installation = true,
    }
)

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
    capabilities = capabilities
}

lspconfig.rust_analyzer.setup {
    capabilities = capabilities
}

vim.diagnostic.config({
    underline = true,
    virtual_text = true,
    signs = true,
    float = true,
    update_in_insert = false,
    severity_sort = false
})
