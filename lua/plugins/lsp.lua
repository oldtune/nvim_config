require("mason").setup({
})

require("mason-lspconfig").setup(
    {
        ensure_installed = { "lua_ls", "rust_analyzer", "omnisharp", "astro", "angularls", "tsserver", "html", "cssls", "dockerls", "jsonls" },
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

lspconfig.omnisharp.setup {
    capabilities = capabilities,
    filetypes = { 'cs', 'vb', 'cshtml' }
}

lspconfig.astro.setup {
    capabilities = capabilities
}

lspconfig.angularls.setup {
    capabilities = capabilities
}

lspconfig.tsserver.setup {
    capabilities = capabilities
}

lspconfig.html.setup {
    capabilities = capabilities
}

lspconfig.cssls.setup {
    capabilities = capabilities
}

lspconfig.dockerls.setup {
    capabilities = capabilities
}

lspconfig.jsonls.setup {
    capabilities = capabilities
}

vim.diagnostic.config({
    underline = true,
    virtual_text = false,
    signs = true,
    float = true,
    update_in_insert = false,
    severity_sort = true
})
