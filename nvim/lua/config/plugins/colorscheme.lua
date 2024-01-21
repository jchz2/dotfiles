-- return {
-- 		"loctvl842/monokai-pro.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("monokai-pro").load()
-- 			vim.cmd([[colorscheme monokai-pro-octagon]])
-- 		end
-- }

-- return { 'andersevenrud/nordic.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.cmd[[colorscheme nordic]]
--
--       -- Example config in lua
--       vim.g.nord_contrast = true
--       vim.g.nord_borders = true
--       vim.g.nord_disable_background = false
--       vim.g.nord_italic = true
--       vim.g.nord_uniform_diff_background = true
--       vim.g.nord_bold = true
--
--       -- Load the colorscheme
--       -- require('nordic').set()
--     end,
--   }

return {
  'EdenEast/nightfox.nvim',
  lazy = false,
  name = "nordfox",
  priority = 1000,
  config = function()
    vim.g.nord_bold = true
    vim.cmd.colorscheme "nordfox"
  end
}


-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function ()
--     vim.cmd.colorscheme "catppuccin-mocha"
--   end
-- }

-- return {
--   'shaunsingh/moonlight.nvim',
--   name = "moonlight",
--   priority = 1000,
--   config = function ()
--     vim.cmd.colorscheme "moonlight"
--   end
-- }
