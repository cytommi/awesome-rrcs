nnoremap <leader>pf <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>gb <cmd>lua require('cytommi.telescope').git_branches()<cr>
nnoremap <leader>sh <cmd>lua require('cytommi.telescope').search_home()<cr>
nnoremap <leader>sv <cmd>lua require('cytommi.telescope').search_nvim_settings()<cr>
nnoremap <C-p> <cmd>lua require('cytommi.telescope').project_files()<cr>


