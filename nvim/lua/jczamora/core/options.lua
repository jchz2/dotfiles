local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true
opt.numberwidth = 1

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.softtabstop = 2
opt.smartindent = true

-- line wrappping
opt.wrap = false

-- highlight matching parenthesis
opt.showmatch = true

-- serach settings
opt.ignorecase = true
opt.smartcase = true

-- Live replacing using %s/text/newText
vim.opt.inccommand = "split"
opt.mouse = "a"

-- cursor line
opt.cursorline = true

-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.hidden = true
opt.colorcolumn = "80"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.backup = false
opt.errorbells = false
opt.swapfile = false
