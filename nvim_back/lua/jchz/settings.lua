local set = vim.opt
vim.g.mapleader = " "

set.termguicolors = true
set.hidden = true
set.bg = 'dark'

set.splitright = true
set.cursorline = true
set.number = true
set.laststatus = 3

-- Indentation
set.expandtab = true
set.softtabstop = 2
set.shiftwidth = 2
set.smartindent = true

set.wrap = false

-- highlight matching parenthesis
set.showmatch = true

-- set case insensitive searching
set.ignorecase = true
-- case sensitive searching when not all lowercase
set.smartcase = true
-- Live replacing using %s/text/newText
set.inccommand = "split"

set.mouse = "a"

-- use native clipboard
set.clipboard = "unnamedplus"

set.backup = false
set.errorbells = false
set.swapfile = false

-- Always show signcolumns
set.signcolumn = "yes"

-- Max num caracteres por linea
vim.o.colorcolumn = '80'

-- Relative number
vim.o.relativenumber = true

vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'
set.title = true
set.autoindent = true
set.hlsearch = true
set.incsearch = true
set.showcmd = true
set.cmdheight = 1
set.laststatus = 2
set.scrolloff = 10
set.ai = true
set.si = true
set.backspace = 'start,eol,indent'

-- highlight
set.winblend = 0
set.wildoptions = 'pum'
set.pumblend = 5
set.background = 'dark'

-- ChatGPT
vim.g.chatbot_username = "ChatGPT"
vim.g.chatbot_send_on_enter = 1
vim.g.chatbot_send_on_shift_enter = 0
vim.g.chatbot_history_file = vim.env.HOME .. '/.config/nvim/chatbot_history.txt'
vim.g.chatbot_history_limit = 100
vim.g.chatbot_max_input_length = 1024
vim.g.chatbot_max_output_length = 1024

function chatgpt_lua(input)
  local output = vim.fn.systemlist("python3 ~/.config/nvim/chatgpt.py \""..input.."\"")[1]
  return output
end

vim.g.chatbot_input_function = 'chatgpt_lua'

