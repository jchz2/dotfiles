return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "rust",
        "svelte",
        "cpp",
        "python",
        "yaml",
        "zig",
      },
      sync_install = false,
      highlight = { enable = true },
      -- indent = { enable = true },
    })
  end,
}
