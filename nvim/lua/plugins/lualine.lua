return {
  "nvim-lualine/lualine.nvim",

  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            function()
              return "  " -- o "" si quieres que esté totalmente vacío
            end,
            padding = { left = 1, right = 1 },
            -- color = function()
            --   -- Usar los mismos colores que lualine por modo
            --   local mode_color = {
            --     n = "#56b6c2", -- Normal
            --     i = "#61afef", -- Insert
            --     v = "#AE8FAB", -- Visual
            --     [""] = "#98BBBA", -- Visual block
            --     V = "#98BBBA", -- Visual line
            --     c = "#B2666C", -- Command
            --     no = "#56b6c2",
            --     s = "#56b6c2",
            --     S = "#56b6c2",
            --     [""] = "#56b6c2",
            --     ic = "#61afef",
            --     R = "#e5c07b",
            --     Rv = "#e5c07b",
            --     cv = "#e06c75",
            --     ce = "#e06c75",
            --     r = "#56b6c2",
            --     rm = "#56b6c2",
            --     ["r?"] = "#56b6c2",
            --     ["!"] = "#e06c75",
            --     t = "#61afef",
            --   }
            --   local mode = vim.fn.mode()
            --   return { fg = "#1e222a", bg = mode_color[mode] or "#abb2bf", gui = "bold" }
            -- end,
          },
        },
        lualine_c = { "buffers" },
        lualine_x = {
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = { fg = "#ff9e64" },
          },
        },
        lualine_y = { "filetype", "progress", "searchcount" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "os_icon" },
        -- lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}
