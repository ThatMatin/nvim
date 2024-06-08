require("set")
require("remap")

vim.cmd('source ~/AppData/Local/nvim/after/plugin/jukit.vim')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/neodev.nvim",
    "nvim-treesitter/nvim-treesitter",
    "tpope/vim-fugitive",
    "RRethy/vim-illuminate",
    "savq/melange-nvim",
    "ggandor/leap.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "VonHeikemen/lsp-zero.nvim",
    "/hrsh7th/cmp-nvim-lsp-signature-help",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "simrat39/symbols-outline.nvim",
    "onsails/lspkind.nvim",
    "rgroli/other.nvim",
    "elihunter173/dirbuf.nvim",
    "luk400/vim-jukit",
    "ErichDonGubler/lsp_lines.nvim",
    "karb94/neoscroll.nvim",
    "unblevable/quick-scope",
    "lewis6991/gitsigns.nvim",
    {'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        animation = true,
        insert_at_start = true,
    },
},
{"kylechui/nvim-surround",
event = "VeryLazy",
  },
  {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
      "nvim-tree/nvim-tree.lua",
      lazy=false,
      dependencies = {
          "nvim-tree/nvim-web-devicons",
      },
  },
  {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
  },
  {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
      'stevearc/aerial.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = {
          "nvim-treesitter/nvim-treesitter",
          "nvim-tree/nvim-web-devicons"
      },
  },
  {
      "folke/which-key.nvim",
      event = "VeryLazy",
      init = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
      end,
      opts = {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
      }
  },
  {
      "lukas-reineke/headlines.nvim",
      dependencies = "nvim-treesitter/nvim-treesitter",
      config = true, -- or `opts = {}`
  },
  {
      'neanias/everforest-nvim',
      lazy = false,
      priority = 1000,
  },
  {
      "folke/trouble.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {},
  },
  {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  },
  {
      'numToStr/Comment.nvim',
      lazy = false,
  },
  {
      'mawkler/modicator.nvim',
      dependencies = 'neanias/everforest-nvim', -- Add your colorscheme plugin here
      init = function()
          -- These are required for Modicator to work
          vim.o.cursorline = true
          vim.o.number = true
          vim.o.termguicolors = true
      end
  },
  {
      'akinsho/toggleterm.nvim',
      version = "*",
      config = true
  }
})

vim.opt.termguicolors = true
vim.cmd('colorscheme everforest')
