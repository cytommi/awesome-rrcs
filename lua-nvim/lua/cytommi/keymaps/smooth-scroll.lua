local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("n", "<c-u>", ":call smooth_scroll#up(&scroll, 3, 2)<CR>", opts)
keymap("n", "<c-d>", ":call smooth_scroll#down(&scroll, 3, 2)<CR>", opts)
keymap("n", "<c-b>", ":call smooth_scroll#up(&scroll*2, 3, 4)<CR>", opts)
keymap("n", "<c-f>", ":call smooth_scroll#down(&scroll*2, 3, 4)<CR>", opts)
