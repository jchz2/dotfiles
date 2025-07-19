return {
  "Bekaboo/dropbar.nvim",
  name = "dropbar",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("dropbar").setup()
  end,
}
