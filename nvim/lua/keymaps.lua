vim.cmd("let mapleader = ' '")

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right toggle<CR>")
vim.keymap.set("n", "<C-o>", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>W", ":wall<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
vim.keymap.set("v", "<leader>/", "gcc", { remap = true })
vim.keymap.set("n", "<C-b>", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>bt", ":TransparentToggle<CR>") -- Background trasparent
vim.keymap.set("n", "-", "dd", { noremap = true }) -- Delete a word backwards
vim.keymap.set("n", "<ESC>", ":nohl<CR>")
vim.keymap.set("n", "<leader>br", ":%s/", { noremap = true }) -- buscar y remplazar
vim.keymap.set("v", "<leader>a", ":!sort<CR>", { noremap = true }) -- orden alfabetico
vim.keymap.set("n", "<leader>o", ":Oil<CR>", { noremap = true })
vim.keymap.set("n", "<leader>rr", ":Rest run<CR>")
vim.keymap.set("n", "<C-LeftMouse>", ':execute "edit " . expand("<cword>")<CR>')

-- Baffers
vim.keymap.set("n", "<leader>1", vim.cmd.bfirst)
vim.keymap.set("n", "<leader>0", vim.cmd.blast)
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)
vim.keymap.set("n", "bd", ":bdelete<CR>") -- Buffer close

-- DeepL
vim.keymap.set("n", "<leader>tw", ":Translate es<CR>")
vim.keymap.set("v", "<leader>tw", ":Translate es<CR>")

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader>of", ":Telescope oldfiles<CR>")
vim.keymap.set("n", "<leader>lp", ":Telescope lsp_document_symbols<CR>")
vim.keymap.set("n", "<leader>gch", ":Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>v", ":telescope.builtin').find_files, { desc = 'Abrir archivo' }")

-- lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})

-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Resize window
vim.keymap.set("n", "w<left>", "<C-w><")
vim.keymap.set("n", "w<right>", "<C-w>>")
vim.keymap.set("n", "w<up>", "<C-w>+")
vim.keymap.set("n", "w<down>", "<C-w>-")

-- Splits
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close cirrent split window

-- Move window
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move left" })
vim.keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down" })
vim.keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up" })
vim.keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move right" })

-- Debugging
vim.keymap.set("n", "<leader>dt", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<leader>db", ":lua require('dap').step_back()<CR>")

