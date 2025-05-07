return {
	"nvim-lua/plenary.nvim",

	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				incons = false,
			}
		end
	},
	"tpope/vim-fugitive",
	"mbbill/undotree",
}
