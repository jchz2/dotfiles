-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use("lewis6991/gitsigns.nvim")
  use("windwp/nvim-autopairs")
  use("kylechui/nvim-surround")
  use("nvim-lualine/lualine.nvim")
  use("b3nj5m1n/kommentary")
  use("j-hui/fidget.nvim")
  use("goolord/alpha-nvim")
  use("nvim-tree/nvim-web-devicons")
  use("tpope/vim-eunuch")
  use("akinsho/flutter-tools.nvim")
  use("EdenEast/nightfox.nvim") -- Theme NordFox
  use('navarasu/onedark.nvim')
  use("lifepillar/vim-solarized8")
  use('maxmx03/solarized.nvim')
  use("https://gitlab.com/__tpb/monokai-pro.nvim") -- Theme MonokaiPro
  use('eddyekofo94/gruvbox-flat.nvim') -- Theme gruvbox flat
  use("numToStr/Comment.nvim") -- "gc" to comment visual regions/lines
  use("uga-rosa/translate.nvim") -- DeepL
  use("RRethy/vim-illuminate")
  use("ellisonleao/glow.nvim")
  use("folke/trouble.nvim")
  use("p00f/nvim-ts-rainbow")
  use("lukas-reineke/indent-blankline.nvim")
  use("sindrets/diffview.nvim")
  use('windwp/nvim-ts-autotag')
  use('norcalli/nvim-colorizer.lua')
  use('kdheepak/tabline.nvim')
  use('MunifTanjim/eslint.nvim')
  -- use('tribela/vim-transparent')
  use('tellijo/vim-react-native-snippets')
  -- live-server
  use({
        'barrett-ruth/live-server.nvim',
        build = 'yarn global add live-server',
        config = true
  })
  --Markdaown
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  --Flutter
  use('dart-lang/dart-vim-plugin')
  use('thosakwe/vim-flutter')
  use('natebosch/vim-lsc')
  use('natebosch/vim-lsc-dart')
  --De bugging
  use('mfussenegger/nvim-dap')
  -- Lit
  use('jonsmithers/vim-html-template-literals')
  use('pangloss/vim-javascript')
  -- Prettier
  use('MunifTanjim/prettier.nvim')
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use({
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  })
  use({
    "nvim-tree/nvim-tree.lua",
    tag = "nightly",
  })
  use({
    "jose-elias-alvarez/null-ls.nvim",
    "jay-babu/mason-null-ls.nvim"
  })
  -- Toggleterm
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  -- Gitlens
  use 'f-person/git-blame.nvim'
  -- ChatGPT
  use({
    "jackMort/ChatGPT.nvim",
      config = function()
        require("chatgpt").setup()
      end,
      requires = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
      }
  })
end)
