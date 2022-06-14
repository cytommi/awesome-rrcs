local opts = { noremap = true, silent = true }
-- shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>bc", ":lua require('dap').continue()<cr>", opts)
keymap("n", "<leader>bl", ":lua require('dap').step_over()<cr>", opts)
keymap("n", "<leader>bj", ":lua require('dap').step_into()<cr>", opts)
keymap("n", "<leader>bk", ":lua require('dap').step_out()<cr>", opts)
keymap("n", "<leader>bt", ":lua require('dap').toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>bsb", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))", opts)
-- keymap("n", "<leader>bt", ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))", opts)
keymap("n", "<leader>br", ":lua require('dap').repl.open()<cr>", opts)
keymap("n", "<leader>bp", ":lua require('dap').run_last()<cr>", opts)
