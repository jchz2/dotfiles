return {
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",

    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
        capabilities = capabilities,
      })

        lspconfig.gdscript.setup({
          capabilities = capabilities,
        })
        vim.diagnostic.config(
          {
            underline = false,
            virtual_text = false,
            update_in_insert = false,
            severity_sort = true,
            signs = {
              text = {
                [vim.diagnostic.severity.ERROR] = " ",
                [vim.diagnostic.severity.WARN] = " ",
                [vim.diagnostic.severity.HINT] = " ",
                [vim.diagnostic.severity.INFO] = " ",
              }
            }
          }
        )

        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = false,
        })
    end,
  },
}
