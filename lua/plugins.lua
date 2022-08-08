local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Reload Neovim after saving this file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Packer settings
local util = require('packer.util')
packer.init {
  compile_path = util.join_paths(vim.fn.stdpath('config'), '.packer', 'packer_compiled.lua'),
  display = {
    open_fn = function()
      return util.float { border = 'rounded' }
    end,
  },
}

-- Plugins list
return packer.startup(function(use)
  -- Basics
  use 'wbthomason/packer.nvim'
  
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
