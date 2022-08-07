local set = vim.opt

-- lines and columns
set.number = true
set.relativenumber = true
set.numberwidth = 4
set.cursorline = true
set.signcolumn = 'yes'
set.fillchars:append { eob = " " }

-- colors
set.termguicolors = true

-- clipboard and mouse
set.clipboard = 'unnamedplus'
set.mouse = 'a'

-- backup
set.backup = false
set.writebackup = false
set.swapfile = false
set.undofile = true

-- completions
set.completeopt = { 'menuone', 'noselect' }
set.pumheight = 10
set.updatetime = 300
set.shortmess:append "c"

-- search
set.hlsearch = true
set.ignorecase = true
set.smartcase = true

-- split behavior
set.splitbelow = true
set.splitright = true

-- indentation
set.smartindent = true
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2

-- text display behavior
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8

-- text editing
set.iskeyword:append("-")

-- mappings
set.timeoutlen = 1000

-- miscellaneous
set.fileencoding = 'utf-8'
