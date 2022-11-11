local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Reload Neovim after saving this file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Packer settings
local util = require("packer.util")
packer.init {
  compile_path = util.join_paths(vim.fn.stdpath("config"), ".packer", "packer_compiled.lua"),
  display = {
    open_fn = function()
      return util.float { border = "rounded" }
    end,
  },
}

-- Plugins list
return packer.startup(function(use)
  -- Basics
  use "wbthomason/packer.nvim"

  -- Colors
  use "ellisonleao/gruvbox.nvim"

  -- nvim-tree
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"

  -- Completions
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "saadparwaiz1/cmp_luasnip"

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- Toggleterm
  use "akinsho/toggleterm.nvim"

  -- Telescope
  use {"nvim-telescope/telescope.nvim", branch = '0.1.x'}
  use "nvim-lua/plenary.nvim"

  -- null-ls
  use "jose-elias-alvarez/null-ls.nvim"


  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
