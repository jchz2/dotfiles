vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<ESC>", ":nohl<CR>")
keymap.set("n", "<leader>w", ":w!<CR>")
keymap.set("n", "<leader>a", ":wall<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "-", "dd", { noremap = true }) -- Delete a word backwards
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>br", ":%s/", { noremap = true }) -- buscar y remplazar
keymap.set("v", "<leader>a", ":!sort<CR>", { noremap = true }) -- orden alfabetico
keymap.set("n", "<leader>bt", ":TransparentToggle<CR>") -- Background trasparent
keymap.set("n", "<leader>p", ":Prettier<CR>") -- Format Prettier
keymap.set("n", "bn", ":bNext<CR>") -- Buffer next
keymap.set("n", "bp", ":bprevious<CR>") -- Buffer previous
keymap.set("n", "bd", ":bdelete<CR>") -- Buffer close
keymap.set("n", "gd", ":DiffviewOpen<CR>") -- Git Diffview
keymap.set("n", "<leader>x", ":!node %<cr>")
keymap.set("n", "<leader>j", ":ToggleTerm<CR>") -- Terminal

-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv")
keymap.set("x", "K", ":move '<-2<CR>gv-gv")
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Resize window
keymap.set("n", "w<left>", "<C-w><")
keymap.set("n", "w<right>", "<C-w>>")
keymap.set("n", "w<up>", "<C-w>+")
keymap.set("n", "w<down>", "<C-w>-")

-- DeepL
keymap.set("n", "<leader>tw", ":Translate es<CR>")
keymap.set("v", "<leader>tw", ":Translate es<CR>")

-- Splits
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close cirrent split window

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close cirrent tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep prompt_prefix=🔭<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- rest
keymap.set("n", "<leader>rr", ":lua require('rest-nvim').run()<CR>", { noremap = true })
