-- "ellisonleao/gruvbox.nvim",
-- "eddyekofo94/gruvbox-flat.nvim",
-- { "catppuccin/nvim", name = "catppuccin" },
-- "folke/tokyonight.nvim",
-- "navarasu/onedark.nvim",
return {
	"navarasu/onedark.nvim",
	priority = 1000,
	config = function()
		require("onedark").load()
	end,
}
