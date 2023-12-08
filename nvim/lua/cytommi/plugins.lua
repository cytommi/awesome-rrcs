return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Telescope
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-ui-select.nvim" })

	-- for :Ag only, live_grep is kinda not great
	use({ "junegunn/fzf", run = "./install --bin" })
	use("junegunn/fzf.vim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jose-elias-alvarez/nvim-lsp-ts-utils")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	-- Sources for nvim-cmp
	-- use("hrsh7th/cmp-copilot")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/cmp-nvim-lsp-signature-help")

	use({
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	})
	-- use("mattn/emmet-vim")

	-- Language specific tools
	-- Rust
	-- use({
	-- 	"simrat39/rust-tools.nvim",
	-- 	config = function()
	-- 		require("rust-tools").setup({})
	-- 	end,
	-- })
	use("solarnz/thrift.vim")

	-- debugging
	use("mfussenegger/nvim-dap")

	-- Smooth Scroll
	use("terryma/vim-smooth-scroll")

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- Cheatsheet
	-- use("RishabhRD/popfix")
	-- use("RishabhRD/nvim-cheat.sh")

	-- Tpope goodness
	use("tpope/vim-fugitive")
	use("tpope/vim-surround")
	use("tpope/vim-repeat")
	use("tpope/vim-commentary")
	use("tpope/vim-rhubarb")
	use("tpope/vim-unimpaired")

	-- Status line
	use("nvim-lualine/lualine.nvim")
	-- use("vimpostor/vim-tpipeline")

	-- File Explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
	})

	use("mbbill/undotree")

	-- File Jumping
	use("theprimeagen/harpoon")

	-- Git Worktree
	use("theprimeagen/git-worktree.nvim")

	-- Icons
	use("kyazdani42/nvim-web-devicons")
	use("folke/trouble.nvim")

	-- Markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

	-- AI
	use("github/copilot.vim")
	use({
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				-- optional configuration
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	-- Colorschemes
	use("gruvbox-community/gruvbox")
	use("eddyekofo94/gruvbox-flat.nvim")
	use("sainnhe/gruvbox-material")
	use("mhartington/oceanic-next")
	use("pineapplegiant/spaceduck")
	use("aktersnurra/no-clown-fiesta.nvim")
	use({ "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" })
	use("metalelf0/jellybeans-nvim")
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})
	use("folke/tokyonight.nvim")
	use("andersevenrud/nordic.nvim")
	use("rebelot/kanagawa.nvim")
	use("AlessandroYorba/Alduin")
	use("rose-pine/neovim")
	use("olivercederborg/poimandres.nvim")
	use("loctvl842/monokai-pro.nvim")
	use("arturgoms/moonbow.nvim")
	use("svrana/neosolarized.nvim")
	use("navarasu/onedark.nvim")
end)
