return {
  -- {
  --   "rose-pine/neovim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme "rose-pine"
  --   end
  -- }
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   name = "nordfox",
  --   priority = 1000,
  --   config = function()
  --     vim.g.nord_bold = true
  --     vim.cmd.colorscheme("nordfox")
  --     vim.transparent_mode = true
  --   end,
  -- },
  -- {
  --   "loctvl842/monokai-pro.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("monokai-pro").load()
  --     vim.cmd([[colorscheme monokai-pro-octagon]])
  --   end
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("kanagawa").setup({
  --       undercurl = true,
  --       commentStyle = { italic = true },
  --       functionStyle = { bold = false, italic = false },
  --       keywordStyle = { bold = true },
  --       statementStyle = { bold = true },
  --       typeStyle = { bold = true, italic = false },
  --       variablebuiltinStyle = { italic = true },
  --       specialReturn = true,
  --       specialException = true,
  --       transparent = true,
  --       vim.cmd.colorscheme("kanagawa"),
  --     })
  --   end
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {
          -- SignColumn = {bg = "#ff9900"},
          ["@lsp.type.method"] = { bg = "#ff9900" },
          ["@comment.lua"] = { bg = "#000000" },
        },
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })
      vim.cmd("colorscheme gruvbox")
    end,
  }
}
