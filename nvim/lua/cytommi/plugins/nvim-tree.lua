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

    local keymap = vim.keymap.set

    keymap("n", "<leader>nf", vim.cmd.NvimTreeFindFile)
    keymap("n", "<leader>nt", vim.cmd.NvimTreeToggle)
  end,
}
