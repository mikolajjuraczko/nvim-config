require("nvim-tree").setup()

local light_blue = "#83a598"
local light_purple = "#d3869b"
local light_green = "#b8bb26"
local light_red = "#fb4934"
local light_yellow = "#fabd2f"
local light_gray = "#a89984"
-- local medium_bg = "#282828"

vim.cmd("highlight NvimTreeFolderIcon  guifg=" .. light_blue)
vim.cmd("highlight NvimTreeFolderName  guifg=" .. light_blue)
vim.cmd("highlight NvimTreeOpenedFolderName  guifg=" .. light_blue)
vim.cmd("highlight NvimTreeEmptyFolderName  guifg=" .. light_blue)
vim.cmd("highlight NvimTreeIndentMarker  guifg=" .. light_blue)
vim.cmd("highlight NvimTreeRootFolder  guifg=" .. light_purple)
vim.cmd("highlight NvimTreeGitDirty  guifg=" .. light_red)
vim.cmd("highlight NvimTreeGitNew  guifg=" .. light_yellow)
vim.cmd("highlight NvimTreeSpecialFile  guifg=" .. light_yellow)
-- vim.cmd("highlight NvimTreeNormal  guibg=" .. medium_bg)

require("nvim-web-devicons").set_icon {
["lua"] = {
    icon = "",
    color = light_blue,
    name = "Lua",
  },
   ["license"] = {
    icon = "",
    color = light_green,
    name = "License",
  },
    [".gitignore"] = {
    icon = "",
    color = light_gray,
    name = "GitIgnore",
  },
   ["py"] = {
    icon = "",
    color = light_yellow,
    name = "Py",
  },
}
