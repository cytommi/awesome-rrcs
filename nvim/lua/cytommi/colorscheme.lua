vim.g.gruvbox_invert_selection = '0'

vim.cmd([[
  set background=dark
  colorscheme gruvbox
  highlight CursorLineNR guibg=NONE ctermbg=NONE
  highlight ColorColumn ctermbg=0 guibg=#32302f
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight LineNr guifg=#665c54
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
