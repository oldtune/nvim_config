local treesitter = require("nvim-treesitter.configs")
treesitter.setup {
    ensure_installed = {"asm", "astro", "bash","c_sharp", "css", "csv", "diff", "disassembly", "dockerfile", "fish", "git_config", "git_rebase", "go", "graphql", "html", "http", "javascript", "json", "json5", "regex","rust", "scss", "sql", "ssh_config", "strace", "terraform", "toml","typescript", "vim", "vimdoc", "xml", "yaml"},
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {},
    },
    indent  = {
        enable = true
    }
}
