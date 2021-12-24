local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- files searching
keymap("n", "<C-p>", ":lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>ps", ":lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>pf", ":lua require('telescope.builtin').grep_string()<cr>", opts)

-- git
keymap("n", "<leader>gs", ":lua require('telescope.builtin').git_stash()<cr>", opts)
keymap("n", "<leader>gb", ":lua require('cytommi.telescope').git_branches()<cr>", opts)

-- custom
keymap("n", "<leader>sc", ":lua require('cytommi.telescope').config_files()<cr>", opts)
