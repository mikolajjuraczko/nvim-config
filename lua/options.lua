local set = vim.opt

-- Lines and columns
set.number = true
set.relativenumber = true
set.numberwidth = 4
set.cursorline = true
set.signcolumn = 'yes'
set.fillchars:append { eob = " " }

-- Colors
set.termguicolors = true

-- Clipboard and mouse
set.clipboard = 'unnamedplus'
set.mouse = 'a'

-- Backup
set.backup = false
set.writebackup = false
set.swapfile = false
set.undofile = true

-- Completions
set.completeopt = { 'menuone', 'noselect' }
set.pumheight = 10
set.updatetime = 300
set.shortmess:append "c"

-- Search
set.hlsearch = true
set.ignorecase = true
set.smartcase = true

-- Split behavior
set.splitbelow = true
set.splitright = true

-- Indentation
set.smartindent = true
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2

-- Text display behavior
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8

-- Text editing
set.iskeyword:append("-")

-- Mappings
set.timeoutlen = 1000

-- Miscellaneous
set.fileencoding = 'utf-8'
