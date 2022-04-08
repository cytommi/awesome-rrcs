local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>nf", ":NvimTreeFindFile<CR>", opts)
keymap("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>", opts)

