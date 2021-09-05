autocmd!
scriptencoding utf-8

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

set path+=**


call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }

Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

Plug 'terryma/vim-smooth-scroll'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rhubarb'

Plug 'gruvbox-community/gruvbox'
call plug#end()

lua require("cytommi")

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "

" Reload .vimrc
nnoremap <Leader><CR> :so $MYVIMRC<CR>

" Edit init.vim
nnoremap <Leader>\ :e ~/.config/nvim/init.vim<CR> 


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




