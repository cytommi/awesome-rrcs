autocmd!

set path+=**

syntax enable
set tabstop=4 softtabstop=4
set shiftwidth=4
set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set expandtab
set nu
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set cmdheight=2
set updatetime=50
set timeoutlen=500


call plug#begin('~/.vim/plugged')

" UndoTree
Plug 'mbbill/undotree'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" Smooth scroll
Plug 'terryma/vim-smooth-scroll'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Cheat.sh
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-cheat.sh'

" Tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rhubarb'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'gruvbox-community/gruvbox'

call plug#end()

lua require("cytommi")

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "


" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Reload .vimrc
nnoremap <Leader><CR> :so $MYVIMRC<CR>

" Edit init.vim
nnoremap <Leader>\ :e ~/.config/nvim/init.vim<CR> 

" Delete char without yank
nnoremap x "_x

" Yanking
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" Explorer
nnoremap <leader>e :E<cr>


" Window navigation
nnoremap <silent><leader>h <cmd>wincmd h<CR>
nnoremap <silent><leader>j <cmd>wincmd j<CR>
nnoremap <silent><leader>k <cmd>wincmd k<CR>
nnoremap <silent><leader>l <cmd>wincmd l<CR>

" Escape shortcut 
inoremap kj <ESC>
inoremap kJ <ESC>
inoremap Kj <ESC>
inoremap KJ <ESC>

" Smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 3, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 3, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 3, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 3, 4)<CR>

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
