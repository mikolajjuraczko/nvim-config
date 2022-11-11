require("nvim-tree").setup({
	view = {
		mappings = {
			list = {
				{ key = "d", action = "trash" },
				{ key = "D", action = "remove" },
			},
		},
	},
	renderer = { special_files = {} },
})
