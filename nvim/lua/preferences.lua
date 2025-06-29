-- vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.colorcolumn = "80"
vim.opt.number = true
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.tabstop = 2      -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 0   -- 2 spaces for indent width
vim.opt.softtabstop = 0
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.scrolloff = 5
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.clipboard:append("unnamed")
vim.opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.smartindent = true
vim.opt.swapfile = false  -- turn off swapfile
vim.opt.encoding = "utf-8"
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smarttab = true
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }) -- Para ventanas flotantes (ej. LSP, Mason)
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' }) -- Para los bordes de ventanas flotantes
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' }) -- Para el menú de autocompletado
vim.g.html_indent_style1 = "inc"

-- Enable break indent
vim.opt.breakindent = true
-- Store undos between sessions
vim.opt.undofile = true
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Configurar path para incluir node_modules y el directorio del proyecto
vim.o.path = vim.o.path .. ",./**," .. vim.fn.expand("~/Projects/**") .. ",/Users/youruser/project/node_modules/**"
