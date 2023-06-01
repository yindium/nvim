local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- PackerCompile - regenerate compiled loader file
-- PackerInstall - clean and then install the missing plugins
-- PackerClean - clean the unused plugins
-- PackerStatus - lists installed plugins
-- PackerUpdate - updates plugins (!risky if commits have errors)
-- PackerLoad {plugin} - loads the plugin immediately
-- PackerSync - sync plugins

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use 'folke/tokyonight.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use "lukas-reineke/indent-blankline.nvim"
  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use 'nvim-tree/nvim-tree.lua'
  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }
  -- barbecue
  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      require("barbecue").setup()
    end,
  })
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  -- auto completition
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  -- snippet engine
  use 'L3MON4D3/LuaSnip'
  -- git signs
  use 'lewis6991/gitsigns.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'jose-elias-alvarez/null-ls.nvim' -- use Neovim as a language server
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
end)
