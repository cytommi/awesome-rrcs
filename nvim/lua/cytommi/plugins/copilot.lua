return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-y><CR>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-y><C-CR>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-y>]", "copilot#Next()", { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-y>[", "copilot#Prev()", { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-y>s", "copilot#Suggest()", { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-y>d", "copilot#Disable()", { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-y>e", "copilot#Enable()", { silent = true, expr = true })
    vim.api.nvim_set_keymap("n", "<C-y>y", ":Copilot panel<CR>", { silent = true, expr = true })
  end,
}
