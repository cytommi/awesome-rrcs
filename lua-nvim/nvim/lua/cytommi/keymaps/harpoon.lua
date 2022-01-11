local opts = { noremap = true, silent = false }
-- shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>a", ":lua require('harpoon.mark').add_file()<cr>", opts)

keymap("n", "<C-h><C-t>", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<C-h>a", ":lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<C-h>r", ":lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<C-h>s", ":lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<C-h>t", ":lua require('harpoon.ui').nav_file(4)<cr>", opts)

keymap("n", "<C-t><C-t>", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<C-t>a", ":lua require('harpoon.term').gotoTerminal(1)<cr>", opts)
keymap("n", "<C-t>r", ":lua require('harpoon.term').gotoTerminal(2)<cr>", opts)
keymap("n", "<C-t>s", ":lua require('harpoon.term').gotoTerminal(3)<cr>", opts)
keymap("n", "<C-t>t", ":lua require('harpoon.term').gotoTerminal(4)<cr>", opts)
