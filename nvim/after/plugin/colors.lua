function UseColorScheme(color)
  color = color or 'nordfox'
  vim.cmd.colorscheme(color)
end

vim.g.monokaipro_filter = "octogon"
UseColorScheme()
