local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>nt", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>nf", ":NvimTreeFindFile<CR>", opts)

