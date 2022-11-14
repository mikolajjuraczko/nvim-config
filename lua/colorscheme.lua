local colorscheme = "gruvbox"

require("gruvbox").setup({ contrast = "hard" })

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- Color palette --
------------------------------------------------------------
local fg = "#ebdbb2"
local light_white = "#fbf1c7"
local light_blue = "#83a598"
local light_purple = "#d3869b"
local light_green = "#b8bb26"
local light_red = "#fb4934"
local light_yellow = "#fabd2f"
local light_orange = "#fe8019"
local light_gray = "#a89984"
local dark_blue = "#458588"
local dark_yellow = "#d79921"
local dark_green = "#98971a"
local dark_red = "#cc241d"
-- local medium_bg = "#282828"

-- nvim-tree --
------------------------------------------------------------
vim.cmd("highlight NvimTreeFolderIcon  guifg=" .. light_yellow)
vim.cmd("highlight NvimTreeFolderName  guifg=" .. light_yellow)
vim.cmd("highlight NvimTreeOpenedFolderName  guifg=" .. light_yellow)
vim.cmd("highlight NvimTreeEmptyFolderName  guifg=" .. light_yellow)
vim.cmd("highlight NvimTreeIndentMarker  guifg=" .. light_yellow)
vim.cmd("highlight NvimTreeRootFolder  guifg=" .. light_purple)
vim.cmd("highlight NvimTreeGitDirty  guifg=" .. light_red)
vim.cmd("highlight NvimTreeGitNew  guifg=" .. light_orange)
vim.cmd("highlight NvimTreeSpecialFile  guifg=" .. light_orange)
vim.cmd("highlight NvimTreeImageFile  guifg=" .. fg)
-- vim.cmd("highlight NvimTreeNormal  guibg=" .. medium_bg)

require("nvim-web-devicons").set_icon({
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
	["html"] = {
		icon = "",
		color = light_orange,
		cterm_color = "202",
		name = "Html",
	},
	["css"] = {
		icon = "",
		color = light_blue,
		cterm_color = "39",
		name = "Css",
	},
	["js"] = {
		icon = "",
		color = light_green,
		cterm_color = "185",
		name = "Js",
	},
	["jsx"] = {
		icon = "",
		color = light_blue,
		cterm_color = "67",
		name = "Jsx",
	},
	["ts"] = {
		icon = "",
		color = light_blue,
		cterm_color = "67",
		name = "Ts",
	},
	["tsx"] = {
		icon = "",
		color = dark_blue,
		cterm_color = "67",
		name = "Tsx",
	},
	["json"] = {
		icon = "",
		color = light_green,
		cterm_color = "185",
		name = "Json",
	},
	["package.json"] = {
		icon = "",
		color = light_red,
		name = "PackageJson",
	},
	["package-lock.json"] = {
		icon = "",
		color = dark_red,
		name = "PackageLockJson",
	},
	["otf"] = {
		icon = "",
		color = light_white,
		cterm_color = "231",
		name = "OpenTypeFont",
	},
	["markdown"] = {
		icon = "",
		color = light_white,
		cterm_color = "67",
		name = "Markdown",
	},
	["md"] = {
		icon = "",
		color = light_white,
		cterm_color = "white",
		name = "Md",
	},
	["pdf"] = {
		icon = "",
		color = light_red,
		cterm_color = "124",
		name = "Pdf",
	},
	["txt"] = {
		icon = "",
		color = light_green,
		cterm_color = "113",
		name = "Txt",
	},
	["jpg"] = {
		icon = "",
		color = light_purple,
		cterm_color = "140",
		name = "Jpg",
	},
})
