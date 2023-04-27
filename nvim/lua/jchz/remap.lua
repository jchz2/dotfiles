-- vim.keymap.set mode, shortcut, action, config
local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<ESC>", opts)

-- Clear search highlight
vim.keymap.set("n", "<esc>", ":noh<return><esc>", opts)

-- Buscar y centrar
vim.keymap.set('n', '*', '*zz', { desc = 'Buscar y centrar pantalla' })

-- Prettier
vim.keymap.set('n', '<leader>p', ':Prettier<CR>', { noremap = true })

-- Fold
vim.keymap.set("n", "zC", "zM", opts)
vim.keymap.set("n", "zO", "zR", opts)
vim.keymap.set("n", "zz", "<C-w>|", opts)

-- Indentations
vim.keymap.set("v", ">", ">gv", { silent = true })
vim.keymap.set("v", "<", "<gv", { silent = true })

-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- DeepL
vim.keymap.set('n', '<leader>tw', ':Translate es<CR>', { noremap = true })
vim.keymap.set('v', '<leader>tw', ':Translate es<CR>', { noremap = true })


-- Move on windows
vim.keymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('', 'sh', '<C-w>h')
vim.keymap.set('', 'sk', '<C-w>k')
vim.keymap.set('', 'sj', '<C-w>j')
vim.keymap.set('', 'sl', '<C-w>l')

-- Resize window
vim.keymap.set('n', 'w<left>', '<C-w><')
vim.keymap.set('n', 'w<right>', '<C-w>>')
vim.keymap.set('n', 'w<up>', '<C-w>+')
vim.keymap.set('n', 'w<down>', '<C-w>-')

vim.keymap.set('n', 'z', '<C-R>')

-- Move Buffers
vim.keymap.set('n', 'bn', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', 'bp', ':bprevious<CR>', { noremap = true })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Background term
vim.keymap.set('n', '<leader>gb', ':set background=dark<CR>', { noremap = true })
vim.keymap.set('n', '<leader>bg', ':hi Normal guibg=NONE ctermbg=NONE<CR>', { noremap = true })

-- Basicos
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true }) -- Exit
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true }) -- Save buffer
vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<cr>', { noremap = true }) -- NvimTree
vim.keymap.set('n', '<leader>a', ':wall<CR>', { noremap = true }) -- save all buffers open
vim.keymap.set('n', '<leader>z', '<S-$>zf%', { noremap = true, silent = false }) -- para plegar codigo de manera sencilla, debes colocarte en el principo de la, llave {}[]() y listo, con za en modo normal vuelves a desplegar el codigo
vim.keymap.set('n', 'bd', ':bd<CR>', { noremap = true }) -- para cerrar el buffer actual
vim.keymap.set('n', '<leader><leader>', ':Telescope buffers<CR>', { noremap = true }) -- muestra los buffers abiertos con telescope
vim.keymap.set('n', '<leader>br', ':%s/', { noremap = true }) -- buscar y remplazar
vim.keymap.set('v', '<leader>a', ':!sort<CR>', { noremap = true }) -- orden alfabetico
vim.keymap.set('n', '-', 'dd', { noremap = true }) -- Delete a word backwards
vim.keymap.set('n', '<leader>bp', ':lua require"dap".toggle_breakpoint()<CR>', { noremap = true }) --BreakPoint

--Split window
vim.keymap.set('n', 'ss', ':split<CR>', { silent = true })
vim.keymap.set('n', 'sv', ':vsplit<CR>', { silent = true })
