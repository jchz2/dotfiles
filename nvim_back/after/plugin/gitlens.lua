-- [[Config gitlens]]
local git_blame = require('gitblame')
git_blame.is_blame_text_available() -- Returns a boolean value indicating whether blame message is available
git_blame.get_current_blame_text() --  Returns a string with blame message
vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

-- [[Config LSP Zero]]
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'clangd'
})
lsp.nvim_workspace()
lsp.setup()
