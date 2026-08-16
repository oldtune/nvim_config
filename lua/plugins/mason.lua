-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "ansible-language-server",
        "angular-language-server",
        "typescript-language-server",
        "csharp-language-server",
        "rust-analyzer",
        "gopls",
        "postgres-language-server",
        "sqls",
        "codelldb",
        "cpptools",
        "yaml-language-server",
        -- install formatters
        "stylua",
        "prettier",
        "csharpier",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
