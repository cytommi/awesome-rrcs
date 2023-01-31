vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap("i", "<C-y>y", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-y><C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-y>n", "copilot#Next()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-y>p", "copilot#Prev()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-y>s", "copilot#Suggest()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-y>d", "copilot#Disable()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-y>e", "copilot#Enable()", { silent = true, expr = true })
