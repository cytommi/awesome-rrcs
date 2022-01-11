local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.NERDTreeWinPos = "right"

keymap("n", "<leader>nt", ":NERDTreeToggle<CR>", opts)
keymap("n", "<leader>nf", ":NERDTreeFind<CR>", opts)

