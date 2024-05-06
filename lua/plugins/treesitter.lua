--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "asm",
      "astro",
      "bash",
      "c_sharp",
      "css",
      "csv",
      "diff",
      "disassembly",
      "dockerfile",
      "fish",
      "git_config",
      "git_rebase",
      "go",
      "graphql",
      "html",
      "http",
      "javascript",
      "json",
      "json5",
      "regex",
      "rust",
      "scss",
      "sql",
      "ssh_config",
      "strace",
      "terraform",
      "toml",
      "typescript",
      "vimdoc",
      "xml",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
