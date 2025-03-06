-- vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.tabstop = 2      -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 0   -- 2 spaces for indent width
vim.opt.softtabstop = 0
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.clipboard:append("unnamed")
vim.opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.swapfile = false  -- turn off swapfile
vim.opt.encoding = "utf-8"
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smarttab = true
vim.opt.background = "dark"
vim.opt.termguicolors = true


-- neovide
vim.o.guifont = "Source Code Pro:h13"
-- vim.g.neovide_window_blurred = true
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
-- vim.g.neovide_transparency = 0.8
vim.g.neovide_theme = 'auto'
vim.g.neovide_show_border = true

