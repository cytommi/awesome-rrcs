local opts = { noremap = true, silent = true }
-- shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>tt", "<cmd>TroubleToggle<cr>", opts)
