return {
  "terryma/vim-smooth-scroll",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap.set
    keymap("n", "<c-u>", ":call smooth_scroll#up(&scroll, 5, 2)<CR>")
    keymap("n", "<c-d>", ":call smooth_scroll#down(&scroll, 5, 2)<CR>")
    keymap("n", "<c-b>", ":call smooth_scroll#up(&scroll*2, 5, 4)<CR>")
    keymap("n", "<c-f>", ":call smooth_scroll#down(&scroll*2, 5, 4)<CR>")
  end,
}
