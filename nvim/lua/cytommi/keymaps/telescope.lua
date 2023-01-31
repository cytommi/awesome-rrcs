local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- files searching
-- keymap("n", "<C-p>", ":lua require('telescope.builtin').git_files()<cr>", opts)
keymap("n", "<C-p>", ":lua require('cytommi.telescope').project_files()<cr>", opts)
keymap("n", "<leader>ps", ":lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>py", ":lua require('cytommi.telescope').fuzzy_live_grep()<cr>", opts)
keymap("n", "<leader>pf", ":lua require('telescope.builtin').grep_string()<cr>", opts)
keymap("n", "<leader>pgc", ":lua require('telescope.builtin').git_commits()<cr>", opts)
keymap("n", "<leader>pbc", ":lua require('telescope.builtin').git_bcommits()<cr>", opts)
keymap("n", "<leader>pgs", ":lua require('telescope.builtin').git_stash()<cr>", opts)
keymap("n", "<leader>pgb", ":lua require('cytommi.telescope').git_branches()<cr>", opts)
keymap("n", "<leader>pr", ":lua require('telescope.builtin').resume()<cr>", opts)
keymap("n", "<leader>po", ":lua require('telescope.builtin').oldfiles()<cr>", opts)
keymap("n", "<leader>chc", ":lua require('telescope.builtin').colorscheme()<cr>", opts)

-- extra fzf searching
keymap("n", "<leader>rg", ":Rg<cr>", opts)
keymap("n", "<leader>ag", ":Ag<cr>", opts)

-- git
keymap(
	"n",
	"<leader>pgw",
	":lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
	{ noremap = true, silent = false }
)

-- custom
keymap("n", "<leader>sc", ":lua require('cytommi.telescope').config_files()<cr>", opts)
