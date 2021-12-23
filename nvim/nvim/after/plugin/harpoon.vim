nnoremap <leader>a :lua require("harpoon.mark").add_file()<cr>

nnoremap <C-h>o :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <C-h>a :lua require("harpoon.ui").nav_file(1)<cr> 
nnoremap <C-h>r :lua require("harpoon.ui").nav_file(2)<cr> 
nnoremap <C-h>s :lua require("harpoon.ui").nav_file(3)<cr> 
nnoremap <C-h>t :lua require("harpoon.ui").nav_file(4)<cr> 

nnoremap <C-t>o :lua require("harpoon.cmd-ui").toggle_quick_menu()<cr>
nnoremap <C-t>a :lua require("harpoon.term").gotoTerminal(1)<cr>
nnoremap <C-t>r :lua require("harpoon.term").gotoTerminal(2)<cr>
nnoremap <C-t>s :lua require("harpoon.term").gotoTerminal(3)<cr>
nnoremap <C-t>t :lua require("harpoon.term").gotoTerminal(4)<cr>
