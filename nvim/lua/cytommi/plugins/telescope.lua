return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },

  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
        },
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "vertical",
        layout_config = {
          horizontal = {
            mirror = false,
          },
          vertical = {
            mirror = false,
          },
        },
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        file_ignore_patterns = { "yarn.lock", ".yarn/*" },
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        path_display = { "truncate" },
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-c>"] = actions.close,
          },
          n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-p>"] = actions.move_selection_previous,
            ["<C-c>"] = actions.close,
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,             -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          },
        },
      },
    })
    require("telescope").load_extension("ui-select")

    -- keymaps
    local opts = { noremap = true, silent = true }

    local keymap = vim.api.nvim_set_keymap

    -- files searching
    -- keymap("n", "<C-p>", ":lua require('telescope.builtin').git_files()<cr>", opts)
    keymap("n", "<C-p>", ":lua require('cytommi.utils.telescope').project_files()<cr>", opts)
    keymap("n", "<leader>py", ":lua require('cytommi.utils.telescope').fuzzy_live_grep()<cr>", opts)
    keymap("n", "<leader>pgb", ":lua require('cytommi.utils.telescope').git_branches()<cr>", opts)

    keymap("n", "<leader>ps", ":lua require('telescope.builtin').live_grep()<cr>", opts)
    keymap("n", "<leader>pf", ":lua require('telescope.builtin').grep_string()<cr>", opts)
    keymap("n", "<leader>pgc", ":lua require('telescope.builtin').git_commits()<cr>", opts)
    keymap("n", "<leader>pbc", ":lua require('telescope.builtin').git_bcommits()<cr>", opts)
    keymap("n", "<leader>pgs", ":lua require('telescope.builtin').git_stash()<cr>", opts)
    keymap("n", "<leader>pr", ":lua require('telescope.builtin').resume()<cr>", opts)
    keymap("n", "<leader>po", ":lua require('telescope.builtin').oldfiles()<cr>", opts)
    keymap("n", "<leader>chc", ":lua require('telescope.builtin').colorscheme()<cr>", opts)

    -- custom
    keymap("n", "<leader>sc", ":lua require('cytommi.utils.telescope').config_files()<cr>", opts)
  end,
}
