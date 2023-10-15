-- return {
-- 	{
-- 		"loctvl842/monokai-pro.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			require("monokai-pro").load()
-- 			vim.cmd([[colorscheme monokai-pro-octagon]])
-- 		end,
-- 	},
-- }

return {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nordic").load()
		vim.cmd([[colorscheme nordic]])
	end,
}
