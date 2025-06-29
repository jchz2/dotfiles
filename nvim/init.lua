require("keymaps")
require("preferences")

--NOTE: Installing lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "plugins" }
})

require("tiny-inline-diagnostic").setup({
  -- ...
  signs = {
    left = "",
    right = "",
    diag = "●",
    arrow = "    ",
    up_arrow = "    ",
    vertical = " │",
    vertical_end = " └",
  },
  blend = {
    factor = 0.22,
  },
  -- ...
})

vim.o.laststatus = 2 -- Siempre mostrar statusline

vim.o.statusline = table.concat({
  "%f",          -- Nombre del archivo
  " %y",         -- Tipo de archivo
  " %m",         -- Modificado [+]
  " %r",         -- Solo lectura [RO]
  " [%{&ff}]",   -- Formato de archivo
  "%=",          -- Alinear a la derecha
  "%c:%l/%L"     -- Columna actual: línea actual / total líneas
})


