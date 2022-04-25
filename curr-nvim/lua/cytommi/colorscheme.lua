-- gruvbox
vim.g.gruvbox_invert_selection = "0"
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_italic = 1
vim.g.gruvbox_italicize_string = 1

-- gruvbox-material
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_palette = "material"

-- gruvbox-flat
vim.g.gruvbox_flat_style = "hard"
vim.g.gruvbox_transparent = true

vim.cmd([[
  colorscheme gruvbox-flat
  highlight ColorColumn ctermbg=0 guibg=#32302f
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight LineNr guifg=#665c54
  highlight CursorLineNR guifg=#5eacd3 guibg=NONE ctermbg=NONE
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
