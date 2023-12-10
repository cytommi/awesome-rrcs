return {
  "theprimeagen/harpoon",
  config = function()
    require("harpoon").setup({
      global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,

        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,

        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = true,

        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,

        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },

        -- set marks specific to each git branch inside git repository
        mark_branch = false,
      },
      projects = {
        ["~/d/devvit"] = {
          term = {
            cmds = {
              "kubectl rollout restart deploy reddit-service-devvit-dev-portal",
            },
          },
        },
      },
    })

    -- shorten function name
    local keymap = vim.keymap.set

    local ui = require("harpoon.ui")
    local mark = require("harpoon.mark")
    local term = require("harpoon.term")

    keymap("n", "<leader>a", mark.add_file)
    keymap("n", "<C-h>o", ui.toggle_quick_menu)

    -- nav file
    keymap("n", "<C-h>a", function()
      ui.nav_file(1)
    end)
    keymap("n", "<C-h>r", function()
      ui.nav_file(2)
    end)
    keymap("n", "<C-h>s", function()
      ui.nav_file(3)
    end)
    keymap("n", "<C-h>t", function()
      ui.nav_file(4)
    end)

    -- nav terminals
    keymap("n", "<C-t>a", function()
      term.gotoTerminal(1)
    end)
    keymap("n", "<C-t>r", function()
      term.gotoTerminal(2)
    end)
    keymap("n", "<C-t>s", function()
      term.gotoTerminal(3)
    end)
    keymap("n", "<C-t>t", function()
      term.gotoTerminal(4)
    end)
    keymap("n", "<C-t>d", function()
      term.gotoTerminal(5)
    end)
    keymap("n", "<C-t>f", function()
      term.gotoTerminal(6)
    end)

    keymap("n", "<C-t>qa", function()
      term.sendCommand(1, 1)
    end)

    keymap("n", "<C-t>qr", function()
      term.sendCommand(2, 1)
    end)

    keymap("n", "<C-t>qs", function()
      term.sendCommand(3, 1)
    end)

    keymap("n", "<C-t>qt", function()
      term.sendCommand(4, 1)
    end)

    keymap("n", "<C-t>wa", function()
      term.sendCommand(1, 2)
    end)

    keymap("n", "<C-t>wr", function()
      term.sendCommand(2, 2)
    end)

    keymap("n", "<C-t>ws", function()
      term.sendCommand(3, 2)
    end)

    keymap("n", "<C-t>wt", function()
      term.sendCommand(4, 2)
    end)

    keymap("n", "<C-t>fa", function()
      term.sendCommand(1, 3)
    end)

    keymap("n", "<C-t>fr", function()
      term.sendCommand(2, 3)
    end)

    keymap("n", "<C-t>fs", function()
      term.sendCommand(3, 3)
    end)

    keymap("n", "<C-t>ft", function()
      term.sendCommand(4, 3)
    end)

    keymap("n", "<C-t>pa", function()
      term.sendCommand(1, 4)
    end)

    keymap("n", "<C-t>pr", function()
      term.sendCommand(2, 4)
    end)

    keymap("n", "<C-t>ps", function()
      term.sendCommand(3, 4)
    end)

    keymap("n", "<C-t>pt", function()
      term.sendCommand(4, 4)
    end)
  end,
}
