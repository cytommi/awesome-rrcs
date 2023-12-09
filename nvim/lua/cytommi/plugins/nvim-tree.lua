return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        relativenumber = true,
        side = "right",
        adaptive_size = true,
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
    })

    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_set_keymap

    keymap("n", "<leader>nf", ":NvimTreeFindFile<CR>", opts)
    keymap("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>", opts)
  end,
}
