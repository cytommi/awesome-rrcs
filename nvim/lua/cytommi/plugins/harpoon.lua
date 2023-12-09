return {
	"theprimeagen/harpoon",
	config = function()
		require("harpoon").setup({
			global_settings = {
				-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
				save_on_toggle = false,

				-- saves the harpoon file upon every change. disabling is unrecommended.
				save_on_change = true,

				-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
				enter_on_sendcmd = true,

				-- closes any tmux windows harpoon that harpoon creates when you close Neovim.
				tmux_autoclose_windows = false,

				-- filetypes that you want to prevent from adding to the harpoon list menu.
				excluded_filetypes = { "harpoon" },

				-- set marks specific to each git branch inside git repository
				mark_branch = false,
			},
			projects = {
				["~/d/devvit"] = {
					term = {
						cmds = {
							"kubectl rollout restart deploy reddit-service-devvit-dev-portal",
						},
					},
				},
			},
		})

		local opts = { noremap = true, silent = false }
		-- shorten function name
		local keymap = vim.api.nvim_set_keymap

		keymap("n", "<leader>a", ":lua require('harpoon.mark').add_file()<cr>", opts)

		keymap("n", "<C-h>o", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
		keymap("n", "<C-h>a", ":lua require('harpoon.ui').nav_file(1)<cr>", opts)
		keymap("n", "<C-h>r", ":lua require('harpoon.ui').nav_file(2)<cr>", opts)
		keymap("n", "<C-h>s", ":lua require('harpoon.ui').nav_file(3)<cr>", opts)
		keymap("n", "<C-h>t", ":lua require('harpoon.ui').nav_file(4)<cr>", opts)

		keymap("n", "<C-t>a", ":lua require('harpoon.term').gotoTerminal(1)<cr>", opts)
		keymap("n", "<C-t>r", ":lua require('harpoon.term').gotoTerminal(2)<cr>", opts)
		keymap("n", "<C-t>s", ":lua require('harpoon.term').gotoTerminal(3)<cr>", opts)
		keymap("n", "<C-t>t", ":lua require('harpoon.term').gotoTerminal(4)<cr>", opts)
		keymap("n", "<C-t>d", ":lua require('harpoon.term').gotoTerminal(5)<cr>", opts)
		keymap("n", "<C-t>f", ":lua require('harpoon.term').gotoTerminal(6)<cr>", opts)

		keymap("n", "<C-t>qa", ":lua require('harpoon.term').sendCommand(1, 1)<cr>", opts)
		keymap("n", "<C-t>qr", ":lua require('harpoon.term').sendCommand(2, 1)<cr>", opts)
		keymap("n", "<C-t>qs", ":lua require('harpoon.term').sendCommand(3, 1)<cr>", opts)
		keymap("n", "<C-t>qt", ":lua require('harpoon.term').sendCommand(4, 1)<cr>", opts)

		keymap("n", "<C-t>wa", ":lua require('harpoon.term').sendCommand(1, 2)<cr>", opts)
		keymap("n", "<C-t>wr", ":lua require('harpoon.term').sendCommand(2, 2)<cr>", opts)
		keymap("n", "<C-t>ws", ":lua require('harpoon.term').sendCommand(3, 2)<cr>", opts)
		keymap("n", "<C-t>wt", ":lua require('harpoon.term').sendCommand(4, 2)<cr>", opts)

		keymap("n", "<C-t>fa", ":lua require('harpoon.term').sendCommand(1, 3)<cr>", opts)
		keymap("n", "<C-t>fr", ":lua require('harpoon.term').sendCommand(2, 3)<cr>", opts)
		keymap("n", "<C-t>fs", ":lua require('harpoon.term').sendCommand(3, 3)<cr>", opts)
		keymap("n", "<C-t>ft", ":lua require('harpoon.term').sendCommand(4, 3)<cr>", opts)

		keymap("n", "<C-t>pa", ":lua require('harpoon.term').sendCommand(1, 4)<cr>", opts)
		keymap("n", "<C-t>pr", ":lua require('harpoon.term').sendCommand(2, 4)<cr>", opts)
		keymap("n", "<C-t>ps", ":lua require('harpoon.term').sendCommand(3, 4)<cr>", opts)
		keymap("n", "<C-t>pt", ":lua require('harpoon.term').sendCommand(4, 4)<cr>", opts)
	end,
}
