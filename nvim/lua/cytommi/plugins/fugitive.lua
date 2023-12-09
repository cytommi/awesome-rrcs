return {
  "tpope/vim-fugitive",
  config = function()
    local opts = { noremap = true, silent = true }
    -- shorten function name
    local keymap = vim.api.nvim_set_keymap

    keymap("n", "<leader>gh", ":diffget //2<cr>", opts)
    keymap("n", "<leader>gl", ":diffget //3<cr>", opts)
    keymap("n", "<leader>gs", ":G<cr>", opts)
    keymap("n", "<leader>gp", ":G pull<cr>", opts)
    keymap("n", "<leader>gfo", ":G fetch origin<cr>", opts)
  end,
}
