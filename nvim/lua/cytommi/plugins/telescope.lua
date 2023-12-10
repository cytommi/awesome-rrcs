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

    local builtin = require("telescope.builtin")

    -- keymaps
    local keymap = vim.keymap.set

    keymap("n", "<C-p>", function()
      local opts = {} -- define here if you want to define something
      local ok = pcall(builtin.git_files, opts)
      if not ok then
        builtin.find_files(opts)
      end
    end)

    keymap("n", "<leader>pgb", function()
      builtin.git_branches({
        attach_mappings = function(_, map)
          map("i", "<c-d>", actions.git_delete_branch)
          map("n", "<c-d>", actions.git_delete_branch)
          return true
        end,
      })
    end)

    keymap("n", "<leader>sc", function()
      builtin.find_files({
        prompt_title = "< CONFIG >",
        cwd = "~/.config/",
      })
    end)

    keymap("n", "<leader>ps", builtin.live_grep)
    keymap("n", "<leader>pf", builtin.grep_string)
    keymap("n", "<leader>pgc", builtin.git_commits)
    keymap("n", "<leader>pbc", builtin.git_bcommits)
    keymap("n", "<leader>pgs", builtin.git_stash)
    keymap("n", "<leader>pr", builtin.resume)
    keymap("n", "<leader>po", builtin.oldfiles)
    keymap("n", "<leader>chc", builtin.colorscheme)

    -- custom
  end,
}
