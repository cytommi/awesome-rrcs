syntax enable

set path+=**
set tabstop=2 softtabstop=2
set shiftwidth=2
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
set smartindent
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

" Coc (used only for formatting and linting)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" Autocompletion
Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp

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
Plug 'tpope/vim-unimpaired'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" Nerdtree
Plug 'preservim/nerdtree'

" Color themes
Plug 'gruvbox-community/gruvbox'
Plug 'doums/darcula'
Plug 'lifepillar/vim-solarized8'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

lua require("cytommi")

" Colors
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme darcula
set background=dark
highlight CursorLineNR guibg=NONE ctermbg=NONE
highlight ColorColumn ctermbg=0 guibg=#32302f
highlight SignColumn guibg=NONE ctermbg=NONE
highlight clear LineNr 
highlight LineNr guifg=#32302f
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f
highlight Normal guibg=NONE ctermbg=NONE

let g:gruvbox_invert_selection='0'

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

" Cursor
set cursorline " Enables cursor line position tracking:
highlight clear CursorLine " Sets the line numbering to red background:

let mapleader = " "

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

nnoremap <bs> <C-^>

" Reload .vimrc
nnoremap <Leader><cr> :so $MYVIMRC<cr>

" Edit init.vim
nnoremap <Leader>\ :e ~/.config/nvim/init.vim<CR>

" Delete without yank
nnoremap x "_x
vnoremap x "_x
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Yanking
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

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

nnoremap <leader>t :NERDTreeToggle<CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

