local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

local plugins = {
  'jiangmiao/auto-pairs',
  'folke/tokyonight.nvim',
  'nvim-tree/nvim-web-devicons',
  "lukas-reineke/indent-blankline.nvim",
  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'nvim-tree/nvim-tree.lua',
  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.1',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },
  -- bufferline
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  -- barbecue
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      require("barbecue").setup()
    end,
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  -- auto completition
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  -- snippet engine
  'L3MON4D3/LuaSnip',
  -- git signs
  'lewis6991/gitsigns.nvim',
  'norcalli/nvim-colorizer.lua',
  'jose-elias-alvarez/null-ls.nvim', -- use Neovim as a language server
  {
    "akinsho/toggleterm.nvim",
    version = '*',
    config = function()
      require("toggleterm").setup()
    end
  },

  -- Note Taking
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  'lervag/vimtex'
}

require("lazy").setup(plugins, {})
