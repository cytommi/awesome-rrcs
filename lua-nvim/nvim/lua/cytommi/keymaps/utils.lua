local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "tq", ":lua require('cytommi.utils').toggle_quick_fix()<cr>", opts)
