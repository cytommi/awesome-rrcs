require("nvim-tree").setup({
	view = {
		relativenumber = true,
		side = "right",
		adaptive_size = true,
	},
	git = {
		enable = true,
		ignore = false,
	},
	actions = {
		open_file = {
			resize_window = true,
		},
	},
})
