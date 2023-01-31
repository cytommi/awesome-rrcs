-- tokyonight

-- neon
vim.g.neon_style = "default"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
vim.g.neon_transparent = true

-- gruvbox
vim.g.gruvbox_invert_selection = "0"
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_italic = 1
vim.g.gruvbox_italicize_string = 1
vim.g.gruvbox_bold = "0"

-- gruvbox-material
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_palette = "material"
vim.g.gruvbox_material_transparent_background = 1

-- gruvbox-flat
vim.g.gruvbox_flat_style = "dark"
vim.g.gruvbox_flat_transparent = true
vim.g.gruvbox_transparent = true
vim.g.gruvbox_dark_sidebar = false

-- catppuccin
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

vim.o.background = "dark"

require("kanagawa").setup({
	transparent = true,
})

require("catppuccin").setup({
	transparent_background = true,

	integrations = {
		nvimtree = {
			transparent_panel = true,
		},
	},
})

require("tokyonight").setup({
	styles = {
		floats = "transparent",
		sidebars = "transparent",
	},
	transparent = true,
})

-- colorscheme kanagawa
vim.cmd([[
  colorscheme gruvbox-flat
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight ColorColumn ctermbg=0 guibg=#32302f
  highlight LineNr guifg=#665c54
  highlight CursorLineNR guifg=#665c54 guibg=NONE ctermbg=NONE
  highlight netrwDir guifg=#5eacd3
  highlight qfFileName guifg=#aed75f
  highlight Normal guibg=NONE ctermbg=NONE

  " Telescope Colors
  highlight TelescopeSelection      guifg=#5eacd3 gui=bold " Selected item
  highlight TelescopeSelectionCaret guifg=#fe8019          " Selection caret
  highlight TelescopeMultiSelection guifg=#fabd2f          " Multisections

  " Border highlight groups
  highlight TelescopeBorder         guifg=#ebdbb2
  highlight TelescopePromptBorder   guifg=#ebdbb2
  highlight TelescopeResultsBorder  guifg=#ebdbb2
  highlight TelescopePreviewBorder  guifg=#ebdbb2

  " Highlight characters your input matches
  highlight TelescopeMatching       guifg=#aed75f

  " Color the prompt prefix
  highlight TelescopePromptPrefix   guifg=#fabd2f
]])
