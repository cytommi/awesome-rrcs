return {
	"tpope/vim-fugitive",
	config = function()
		-- shorten function name
		local keymap = vim.keymap.set

		keymap("n", "<leader>gh", ":diffget //2<cr>")
		keymap("n", "<leader>gl", ":diffget //3<cr>")
		keymap("n", "<leader>gs", ":G<cr>")
		keymap("n", "<leader>gp", ":G pull<cr>")
		keymap("n", "<leader>gfo", ":G fetch origin<cr>")
	end,
}
