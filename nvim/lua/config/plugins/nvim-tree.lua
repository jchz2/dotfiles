return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")
    -- recommended settings from nvim-tree documentation
    vim.g.loaded = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.tree_quin_on_open = 1

    vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

    nvimtree.setup({
      view = {
        width = 30,
        side = "right",
      },
      renderer = {
        icons = {
          glyphs = {
            folder = {
              arrow_closed = " ", -- is closed
              arrow_open = " ", -- is open
            },
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
    })

    --set keymaps
    local keymap = vim.keymap --for conciseness

    keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>")
  end
}

