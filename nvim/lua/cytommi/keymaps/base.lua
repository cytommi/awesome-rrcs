local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- Leader Key
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Window Navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Switch CWD to the directory of the open buffer
keymap("n", "<leader>cd", ":cd %:p:h<cr>:pwd<cr>", opts)

-- Reload config
keymap("n", "<leader><cr>", ":so ~/.config/nvim/init.lua<cr>", opts)

-- Delete without yanking
keymap("n", "x", '"_x', opts)
keymap("v", "x", '"_x', opts)
-- keymap("n", "<leader>d", '"_d', opts)
keymap("v", "<leader>d", '"_d', opts)

-- Yanking
keymap("n", "<leader>y", '"+y', opts) -- copy to clipboard
keymap("v", "<leader>y", '"+y', opts) -- copy to clipboard

-- Escape
keymap("i", "kj", "<ESC>", opts)
keymap("i", "kJ", "<ESC>", opts)
keymap("i", "Kj", "<ESC>", opts)
keymap("i", "KJ", "<ESC>", opts)
keymap("i", "<C-e><C-n>", "<ESC>", opts)
keymap("t", "<C-e><C-n>", "<C-\\><C-n>", term_opts)

-- No more :Q error
keymap("i", ":Q", ":q", opts)

-- Back to previous buffer
keymap("n", "<bs>", "<C-^>", opts)

keymap("n", "<leader>cc", ':lua require("cytommi.utils").toggle_quick_fix()<cr>', opts)

-- keymap("n", "n", "nzzzv", opts);
-- keymap("n", "N", "Nzzzv", opts);
