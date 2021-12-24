local options = {
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	completeopt = { "menuone", "noselect" }, 
  undodir = '~/.vim/undodir',
	signcolumn = 'yes',
	scrolloff = 8,
	colorcolumn = '80',
	cmdheight = 2,
	updatetime = 50,
	timeoutlen = 500,
	exrc = true,
	relativenumber = true,
	hlsearch = false,
	hidden = true,
	errorbells = false,
	expandtab = true,
	nu = true,
	wrap = false,
	ignorecase = true,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	backup = false, 
	undofile = true,
	incsearch = true,
	termguicolors = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

