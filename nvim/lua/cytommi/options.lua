local options = {
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	completeopt = { "menuone", "noselect" },
	signcolumn = "yes",
	scrolloff = 8,
	colorcolumn = "80",
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
	laststatus = 3,
	showmode = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- vim.o.ch = 0
-- vim.o.ls = 0
